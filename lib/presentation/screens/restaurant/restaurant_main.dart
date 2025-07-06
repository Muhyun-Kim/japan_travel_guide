import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/hotpepper/request/gourmet_search_request.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/gourmet_response.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';
import 'package:japan_travel_guide/data/services/translation_service.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';
import 'package:japan_travel_guide/presentation/widgets/debug/debug_controls.dart';

class RestaurantMain extends ConsumerStatefulWidget {
  const RestaurantMain({super.key});

  @override
  ConsumerState<RestaurantMain> createState() =>
      _RestaurantMainState();
}

class _RestaurantMainState extends ConsumerState<RestaurantMain> {
  // HotPepper API 인스턴스
  late final HotPepperApi _hotPepperApi;

  // 번역 서비스 인스턴스
  late final TranslationService _translationService;

  // 스크롤 컨트롤러
  late final ScrollController _scrollController;

  // 현재 검색 요청 상태
  GourmetSearchRequest? _currentRequest;

  // 로딩 상태
  bool _isLoading = false;
  bool _isLoadingMore = false;

  // 로드된 맛집 데이터
  List<Shop> _shops = [];

  // 번역된 맛집 데이터 (shopId -> 번역된 정보)
  Map<String, Map<String, String?>> _translatedShops = {};

  // 번역 중인 맛집들
  Set<String> _translatingShops = {};

  // 더 로드할 데이터가 있는지
  bool _hasMoreData = true;

  // 에러 상태
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _hotPepperApi = HotPepperApi();
    _translationService = TranslationService();
    _scrollController = ScrollController();

    // 스크롤 리스너 추가
    _scrollController.addListener(_onScroll);

    // 위젯이 완전히 빌드된 후에 첫 페이지 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadFirstPage();
    });
  }

  @override
  void dispose() {
    // 리소스 정리
    _scrollController.dispose();
    _hotPepperApi.dispose();
    super.dispose();
  }

  /// 스크롤 이벤트 처리
  void _onScroll() {
    // 스크롤이 끝에 도달했는지 확인
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      // 끝에서 200px 전에 미리 로드
      _loadNextPage();
    }
  }

  /// 첫 페이지 로드
  Future<void> _loadFirstPage() async {
    if (_isLoading) return;

    final selectedRegions = ref.read(selectedRegionsProvider);
    if (selectedRegions.isEmpty) {
      setState(() {
        _errorMessage = '선택된 지역이 없습니다.';
      });
      return;
    }

    final serviceArea = selectedRegions[0].code;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _shops.clear();
      _hasMoreData = true;
    });

    try {
      // 첫 페이지 요청 생성
      _currentRequest = GourmetSearchRequest(
        serviceArea: serviceArea,
        start: 1,
        count: 20, // 무한스크롤용으로 적당한 양
      );

      final result = await _hotPepperApi.searchGourmet(
        _currentRequest!,
      );

      result.when(
        success: (response) {
          setState(() {
            _shops.addAll(response.shops);
            _hasMoreData = response.hasMoreData;
            _currentRequest = _currentRequest!.nextPage(count: 20);
          });
          
          // 새로 로드된 맛집들 번역 시작
          _translateNewShops(response.shops);
        },
        httpError: (code, message) {
          setState(() {
            _errorMessage = 'HTTP 에러: $code $message';
          });
        },
        apiError: (error) {
          setState(() {
            _errorMessage = 'API 에러: ${error.error.message}';
          });
        },
        networkError: (message) {
          setState(() {
            _errorMessage = '네트워크 에러: $message';
          });
        },
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 다음 페이지 로드 (무한스크롤용)
  Future<void> _loadNextPage() async {
    if (_isLoadingMore || !_hasMoreData || _currentRequest == null) {
      return;
    }

    setState(() {
      _isLoadingMore = true;
    });

    try {
      final result = await _hotPepperApi.searchGourmetNextPage(
        _currentRequest!,
      );

      result.when(
        success: (response) {
          setState(() {
            _shops.addAll(response.shops);
            _hasMoreData = response.hasMoreData;
            _currentRequest = _currentRequest!.nextPage(count: 20);
          });
          
          // 새로 로드된 맛집들 번역 시작
          _translateNewShops(response.shops);
        },
        httpError: (code, message) {
          // 에러 시 스낵바로 표시
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('데이터 로드 실패: $message')),
            );
          }
        },
        apiError: (error) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('API 에러: ${error.error.message}'),
              ),
            );
          }
        },
        networkError: (message) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('네트워크 에러: $message')),
            );
          }
        },
      );
    } finally {
      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  /// 새로 로드된 맛집들 번역 시작
  Future<void> _translateNewShops(List<Shop> newShops) async {
    for (final shop in newShops) {
      // 이미 번역 중이거나 번역된 맛집은 건너뛰기
      if (_translatingShops.contains(shop.id) || _translatedShops.containsKey(shop.id)) {
        continue;
      }

      // 번역 중 상태로 설정
      setState(() {
        _translatingShops.add(shop.id);
      });

      // 번역 실행 (비동기)
      _translateSingleShop(shop);
    }
  }

  /// 개별 맛집 번역
  Future<void> _translateSingleShop(Shop shop) async {
    try {
      final translatedInfo = await _translationService.translateRestaurantInfo(
        name: shop.name,
        catchPhrase: shop.catchPhrase,
        address: shop.address,
        access: shop.access,
        budget: shop.displayBudget,
      );

      if (mounted) {
        setState(() {
          _translatedShops[shop.id] = translatedInfo;
          _translatingShops.remove(shop.id);
        });
      }
    } catch (e) {
      print('번역 실패 - 맛집 ID: ${shop.id}, 에러: $e');
      if (mounted) {
        setState(() {
          _translatingShops.remove(shop.id);
        });
      }
    }
  }

  /// 번역된 텍스트 가져오기 (번역 실패 시 원문 반환)
  String _getTranslatedText(String shopId, String field, String originalText) {
    final translatedData = _translatedShops[shopId];
    if (translatedData != null && translatedData[field] != null) {
      return translatedData[field]!;
    }
    return originalText; // 번역 실패 시 원문 표시
  }

  /// 맛집 번역 상태 확인
  bool _isTranslating(String shopId) {
    return _translatingShops.contains(shopId);
  }

  /// 맛집 카드 위젯 빌드
  Widget _buildShopCard(Shop shop) {
    final isTranslating = _isTranslating(shop.id);
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 맛집 이름 + 번역 상태 표시
            Row(
              children: [
                Expanded(
                  child: Text(
                    _getTranslatedText(shop.id, 'name', shop.name),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (isTranslating)
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),

            // 캐치 프레이즈
            if (shop.catchPhrase.isNotEmpty)
              Text(
                _getTranslatedText(shop.id, 'catchPhrase', shop.catchPhrase),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            const SizedBox(height: 8),

            // 장르와 예산
            Row(
              children: [
                Icon(
                  Icons.restaurant,
                  size: 16,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    shop.genre.name,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (shop.displayBudget.isNotEmpty) ...[
                  const SizedBox(width: 8),
                  Icon(
                    Icons.attach_money,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                    _getTranslatedText(shop.id, 'budget', shop.displayBudget),
                    style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    ),
                    overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 8),

            // 주소
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    _getTranslatedText(shop.id, 'address', shop.address),
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            // 액세스 정보
            if (shop.access.isNotEmpty) ...[
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.train,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      _getTranslatedText(shop.id, 'access', shop.access),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedRegions = ref.watch(selectedRegionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('맛집'),
        actions: [
          // 🔧 디버그 버튼 (개발 모드에서만 보임)
          const DebugControls(),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    // 첫 로딩 중
    if (_isLoading && _shops.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    // 에러 상태
    if (_errorMessage != null && _shops.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadFirstPage,
              child: const Text('다시 시도'),
            ),
          ],
        ),
      );
    }

    // 데이터가 없는 경우
    if (_shops.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              '맛집 데이터가 없습니다.',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      );
    }

    // 무한스크롤 리스트
    return RefreshIndicator(
      onRefresh: _loadFirstPage,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _shops.length + (_hasMoreData ? 1 : 0),
        itemBuilder: (context, index) {
          // 로드된 맛집 표시
          if (index < _shops.length) {
            return _buildShopCard(_shops[index]);
          }

          // 더 로드할 데이터가 있으면 로딩 인디케이터 표시
          if (_hasMoreData) {
            return Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child:
                  _isLoadingMore
                      ? const CircularProgressIndicator()
                      : const SizedBox.shrink(),
            );
          }

          // 모든 데이터를 로드한 경우
          return Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: Text(
              '모든 맛집을 로드했습니다.',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          );
        },
      ),
    );
  }
}
