import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/area/localized_area.dart';
import 'package:japan_travel_guide/data/models/genre/localized_genre.dart';
import 'package:japan_travel_guide/data/models/hotpepper/request/gourmet_search_request.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/gourmet_response.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';
import 'package:japan_travel_guide/data/services/translation_service.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/restaurant_detail.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/widgets/restaurant_empty_state.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/widgets/restaurant_error_state.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/widgets/shop_card.dart';
import 'package:japan_travel_guide/presentation/widgets/area/area_selector.dart';
import 'package:japan_travel_guide/presentation/widgets/genre/genre_selector.dart';
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

  // 지역 선택기 표시 여부
  bool _showAreaSelector = false;

  // 장르 선택기 표시 여부
  bool _showGenreSelector = false;

  // 선택된 지역
  LocalizedAreaSelection? _selectedArea;

  // 선택된 장르
  LocalizedGenre? _selectedGenre;

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
      // 첫 페이지 요청 생성 (빠른 로딩을 위해 적은 수량)
      _currentRequest = GourmetSearchRequest(
        serviceArea: serviceArea,
        start: 1,
        count: 5, // 첫 로딩은 5개만 (번역 시간 단축)
        smallArea: _selectedArea?.searchSmallAreaCode,
        genre: _selectedGenre?.code,
      );

      final result = await _hotPepperApi.searchGourmet(
        _currentRequest!,
      );

      result.when(
        success: (response) {
          setState(() {
            _shops.addAll(response.shops);
            _hasMoreData = response.hasMoreData;
            _currentRequest = _currentRequest!.nextPage(
              count: 3,
            ); // 다음 페이지는 3개씩
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
            _currentRequest = _currentRequest!.nextPage(
              count: 3,
            ); // 무한스크롤도 3개씩
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
      if (_translatingShops.contains(shop.id) ||
          _translatedShops.containsKey(shop.id)) {
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
      final translatedInfo = await _translationService
          .translateRestaurantInfo(
            name: shop.name,
            catchPhrase: shop.catchPhrase,
            address: shop.address,
            access: shop.access,
            budget: shop.displayBudget,
            genre: shop.genre.name, // 장르 정보 추가
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


  /// 맛집 번역 상태 확인
  bool _isTranslating(String shopId) {
    return _translatingShops.contains(shopId);
  }

  /// 상세 페이지로 이동
  void _navigateToDetail(Shop shop) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => RestaurantDetailScreen(
              shop: shop,
              translatedData: _translatedShops[shop.id] ?? {},
            ),
      ),
    );
  }

  /// 맛집 카드 위젯 빌드
  Widget _buildShopCard(Shop shop) {
    final isTranslating = _isTranslating(shop.id);
    final translatedData = _translatedShops[shop.id] ?? {};

    return ShopCard(
      shop: shop,
      translatedData: translatedData,
      isTranslating: isTranslating,
      onTap: () => _navigateToDetail(shop),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                '맛집 정보',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                _showGenreSelector ? Icons.close : Icons.restaurant_menu,
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  _showGenreSelector = !_showGenreSelector;
                  _showAreaSelector = false; // 장르 선택 시 지역 선택기 닫기
                });
              },
            ),
            IconButton(
              icon: Icon(
                _showAreaSelector ? Icons.close : Icons.tune,
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  _showAreaSelector = !_showAreaSelector;
                  _showGenreSelector = false; // 지역 선택 시 장르 선택기 닫기
                });
              },
            ),
          ],
        ),
        actions: [
          // 🔧 디버그 버튼 (개발 모드에서만 보임)
          const DebugControls(),
        ],
      ),
      body: Column(
        children: [
          // 장르 선택기
          if (_showGenreSelector)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                border: Border(
                  bottom: BorderSide(color: Colors.orange[300]!),
                ),
              ),
              child: _buildGenreSelector(),
            ),

          // 지역 선택기
          if (_showAreaSelector)
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.5,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border(
                  bottom: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: _buildAreaSelector(),
              ),
            ),

          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildBody() {
    // 첫 로딩 중
    if (_isLoading && _shops.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    // 에러 상태
    if (_errorMessage != null && _shops.isEmpty) {
      return RestaurantErrorState(
        errorMessage: _errorMessage!,
        onRetry: _loadFirstPage,
      );
    }

    // 데이터가 없는 경우
    if (_shops.isEmpty) {
      return const RestaurantEmptyState();
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






  /// 장르 선택기 빌드
  Widget _buildGenreSelector() {
    return GenreSelector(
      initialSelection: _selectedGenre,
      onGenreSelected: (genre) {
        setState(() {
          _selectedGenre = genre;
        });
        // 장르 변경 시 데이터 새로고침
        _loadFirstPage();
      },
    );
  }

  /// 지역 선택기 빌드
  Widget _buildAreaSelector() {
    final selectedRegions = ref.read(selectedRegionsProvider);
    if (selectedRegions.isEmpty) {
      return const Text('선택된 지역이 없습니다.');
    }

    final region = selectedRegions[0];

    return LocalizedAreaSelector(
      serviceAreaCode: region.code,
      serviceAreaName: region.name,
      initialSelection: _selectedArea,
      onAreaSelected: (areaSelection) {
        setState(() {
          _selectedArea = areaSelection;
        });
        // 지역 변경 시 데이터 새로고침
        _loadFirstPage();
      },
    );
  }
}
