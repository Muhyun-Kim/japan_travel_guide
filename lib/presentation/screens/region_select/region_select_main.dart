import 'package:flutter/material.dart';

class RegionSelectMain extends StatelessWidget {
  const RegionSelectMain({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            // 헤더
            SizedBox(height: 8),
            Text(
              '맞춤 정보를 제공해드려요',
              style: TextStyle(
                color: Colors.grey[600],
              ),
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
                  _buildRegionCard(
                    '🏙️',
                    '도쿄',
                    'tokyo',
                  ),
                  _buildRegionCard(
                    '🏯',
                    '오사카',
                    'osaka',
                  ),
                  _buildRegionCard(
                    '⛩️',
                    '교토',
                    'kyoto',
                  ),
                  _buildRegionCard(
                    '🍜',
                    '후쿠오카',
                    'fukuoka',
                  ),
                  _buildRegionCard(
                    '❄️',
                    '홋카이도',
                    'hokkaido',
                  ),
                  _buildRegionCard(
                    '📍',
                    '이 외 지역',
                    'others',
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
    String emoji,
    String korean,
    String english,
  ) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          print('$korean 선택됨');
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              emoji,
              style: TextStyle(fontSize: 40),
            ),
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
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
