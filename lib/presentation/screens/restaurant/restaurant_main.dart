import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/hotpepper/request/gourmet_search_request.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/gourmet_response.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';
import 'package:japan_travel_guide/data/services/translation_service.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';
import 'package:japan_travel_guide/presentation/widgets/debug/debug_controls.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/restaurant_detail.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/widgets/shop_card.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/widgets/restaurant_error_state.dart';
import 'package:japan_travel_guide/presentation/screens/restaurant/widgets/restaurant_empty_state.dart';

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

  // 검색 관련 상태
  final TextEditingController _searchController = TextEditingController();
  String _searchKeyword = '';
  bool _isSearchMode = false;

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
    _searchController.dispose();
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

  /// 번역된 텍스트 가져오기 (번역 실패 시 원문 반환)
  String _getTranslatedText(
    String shopId,
    String field,
    String originalText,
  ) {
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

  /// 상세 페이지로 이동
  void _navigateToDetail(Shop shop) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RestaurantDetailScreen(
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
    final selectedRegions = ref.watch(selectedRegionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('맛집'),
        actions: [
          // 🔧 디버그 버튼 (개발 모드에서만 보임)
          const DebugControls(),
        ],
      ),
      body: Column(
        children: [
          _buildSearchBar(),
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

  /// 검색 바 UI
  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: '맛집을 검색하세요 (한국어)',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              onSubmitted: (value) {
                _performSearch(value);
              },
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              _performSearch(_searchController.text);
            },
            child: const Text('검색'),
          ),
          if (_isSearchMode) ...[
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: _clearSearch,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
              ),
              child: const Text('초기화'),
            ),
          ],
        ],
      ),
    );
  }

  /// 검색 실행
  Future<void> _performSearch(String keyword) async {
    if (keyword.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('검색어를 입력해주세요')),
      );
      return;
    }

    setState(() {
      _searchKeyword = keyword.trim();
      _isSearchMode = true;
    });

    await _loadSearchResults();
  }

  /// 검색 초기화
  Future<void> _clearSearch() async {
    setState(() {
      _searchController.clear();
      _searchKeyword = '';
      _isSearchMode = false;
    });

    await _loadFirstPage();
  }

  /// 검색 결과 로드
  Future<void> _loadSearchResults() async {
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
      // 한국어 검색어를 일본어로 번역
      String? translatedKeyword = await _translationService.translateText(
        _searchKeyword,
        targetLang: 'JA',
      );

      if (translatedKeyword == null) {
        setState(() {
          _errorMessage = '검색어 번역에 실패했습니다. 다시 시도해주세요.';
        });
        return;
      }

      print('검색어 번역: "$_searchKeyword" -> "$translatedKeyword"');

      // 검색 요청 생성
      _currentRequest = GourmetSearchRequest(
        serviceArea: serviceArea,
        keyword: translatedKeyword,
        start: 1,
        count: 10,
      );

      final result = await _hotPepperApi.searchGourmet(_currentRequest!);

      result.when(
        success: (response) {
          setState(() {
            _shops.addAll(response.shops);
            _hasMoreData = response.hasMoreData;
            _currentRequest = _currentRequest!.nextPage(count: 10);
          });

          if (response.shops.isEmpty) {
            setState(() {
              _errorMessage = '검색 결과가 없습니다.';
            });
          } else {
            _translateNewShops(response.shops);
          }
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
    } catch (e) {
      setState(() {
        _errorMessage = '검색 중 오류가 발생했습니다: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}
