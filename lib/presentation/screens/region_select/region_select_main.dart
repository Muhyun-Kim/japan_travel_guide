import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:japan_travel_guide/core/constants/app_constants.dart';
import 'package:japan_travel_guide/core/utils/region_utils.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/master_response.dart';
import 'package:japan_travel_guide/data/models/region/region_data.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';
import 'package:japan_travel_guide/presentation/screens/region_select/others_screen.dart';
import 'package:japan_travel_guide/presentation/widgets/debug/debug_controls.dart';

class RegionSelectMain extends ConsumerStatefulWidget {
  const RegionSelectMain({super.key});

  @override
  ConsumerState<RegionSelectMain> createState() =>
      _RegionSelectMainState();
}

class _RegionSelectMainState extends ConsumerState<RegionSelectMain> {
  // API에서 가져온 서비스 지역 데이터
  ServiceAreaResponse? _serviceAreaData;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();

    // 🎯 ServiceAreaMaster 데이터 로드
    _loadServiceAreaMaster();
  }

  /// HotPepper API getServiceAreaMaster 호출
  Future<void> _loadServiceAreaMaster() async {
    try {
      print('🔍 RegionSelectMain: getServiceAreaMaster 호출 시작...');
      final result = await HotPepperApi().getServiceAreaMaster();

      setState(() {
        _serviceAreaData = result;
        _isLoading = false;
        _errorMessage = null;
      });

      print('✅ RegionSelectMain: getServiceAreaMaster 성공');
      print('📊 로드된 지역 수: ${result.data.length}');
    } catch (e) {
      print('❌ RegionSelectMain: getServiceAreaMaster 에러: $e');
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(selectedRegionsProvider.notifier);

    // 로딩 중이거나 에러가 있는 경우 처리
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '좋아하는 지역은?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
        ),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (_errorMessage != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '좋아하는 지역은?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.red),
              SizedBox(height: 16),
              Text('데이터를 불러올 수 없습니다'),
              SizedBox(height: 8),
              Text(
                _errorMessage!,
                style: TextStyle(color: Colors.grey, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isLoading = true;
                    _errorMessage = null;
                  });
                  _loadServiceAreaMaster();
                },
                child: Text('다시 시도'),
              ),
            ],
          ),
        ),
      );
    }

    // 선호 지역 설정 (하드코딩 유지)
    final List<String> preferredRegionList = [
      'tokyo',
      'osaka',
      'kyoto',
      'fukuoka',
      'hokkaido',
    ];

    final List<String> preferredRegionImages = [
      '🏙️',
      '🏯',
      '⛩️',
      '🍜',
      '❄️',
    ];

    // 선호 지역을 하드코딩된 regions에서 검색
    final List<Map<String, String>> preferredRegions =
        regions
            .where(
              (region) => preferredRegionList.contains(region['en']),
            )
            .toList();

    // API 데이터에서 기타 지역 구성 (ServiceArea 데이터 활용)
    final List<RegionData> otherRegionsData =
        RegionUtils.convertServiceAreasToRegionData(
          _serviceAreaData!.data,
        );

    // OthersScreen에서 사용할 Map 형식으로 변환 (하위 호환성)
    final List<Map<String, String>> otherRegions =
        otherRegionsData
            .map(
              (regionData) => {
                'en': regionData.code.toLowerCase(),
                'jp': regionData.name,
                'kr': regionData.name,
              },
            )
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '좋아하는 지역은?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          // 🔧 개발 중에만 보이는 디버그 버튼
          DebugControls(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 헤더
            SizedBox(height: 8),
            Text(
              '맞춤 정보를 제공해드려요',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 24),

            // Grid 카드들
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.0,
                children: [
                  // 선호 지역들을 map으로 동적 생성
                  ...preferredRegions.asMap().entries.map((entry) {
                    int index = entry.key;
                    Map<String, String> region = entry.value;
                    return _buildRegionCard(
                      context,
                      notifier,
                      preferredRegionImages[index],
                      region['kr']!,
                      region['en']!,
                    );
                  }).toList(),
                  _buildRegionCard(
                    context,
                    notifier,
                    '📍',
                    '이 외 지역',
                    'others',
                    regions: otherRegions,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 지역 카드 빌더
  Widget _buildRegionCard(
    BuildContext context,
    SelectedRegionsNotifier notifier,
    String emoji,
    String korean,
    String english, {
    List<Map<String, String>> regions = const [],
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () async {
          if (english == 'others') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OthersScreen(regions: regions),
              ),
            );
          } else {
            // 영어 키로 일본어 이름 찾기
            final region = RegionUtils.searchSingleRegion(english);
            if (region != null) {
              final japaneseName = region['jp']!;

              // ServiceArea에서 매칭되는 지역 찾기
              final matchingServiceArea =
                  _serviceAreaData!.data
                      .where(
                        (sa) =>
                            sa.name.contains(japaneseName) ||
                            japaneseName.contains(sa.name),
                      )
                      .firstOrNull;

              RegionData regionToAdd;
              if (matchingServiceArea != null) {
                regionToAdd = RegionData(
                  code: matchingServiceArea.code,
                  name: matchingServiceArea.name,
                );
              } else {
                // 매칭되는 ServiceArea가 없는 경우 임시 데이터 사용
                regionToAdd = RegionData(
                  code: 'TEMP_${english.toUpperCase()}',
                  name: japaneseName,
                );
              }

              await notifier.addRegion(regionToAdd);
              if (mounted) {
                context.go('/restaurant');
              }
            }
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(emoji, style: TextStyle(fontSize: 40)),
            SizedBox(height: 12),
            Text(
              korean,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              english,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
