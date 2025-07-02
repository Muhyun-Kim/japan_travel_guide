import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:japan_travel_guide/core/constants/app_constants.dart';
import 'package:japan_travel_guide/core/utils/region_utils.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';
import 'package:japan_travel_guide/presentation/screens/region_select/others_screen.dart';
import 'package:japan_travel_guide/presentation/widgets/debug/debug_controls.dart';

class RegionSelectMain extends ConsumerWidget {
  const RegionSelectMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(selectedRegionsProvider.notifier);
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

    final List<Map<String, String>> preferredRegions =
        RegionUtils.searchRegions(preferredRegionList, 'en');

    final List<Map<String, String>> otherRegions =
        regions
            .where(
              (region) => !preferredRegionList.contains(region['en']),
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
        onTap: () {
          if (english == 'others') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OthersScreen(regions: regions),
              ),
            );
          } else {
            notifier.addRegion(english);
            context.go('/restaurant');
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
