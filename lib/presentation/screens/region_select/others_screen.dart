import 'package:flutter/material.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({
    super.key,
    required this.regions,
  });

  final List<Map<String, String>> regions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('아래에서 지역을 선택해주세요'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ...regions.map(
              (region) => Text(region['kr']!),
            ),
          ],
        ),
      ),
    );
  }
}
