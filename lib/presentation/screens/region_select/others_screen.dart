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
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: regions.length,
        separatorBuilder:
            (context, index) => Divider(
              height: 1,
              color: Colors.grey[300],
            ),
        itemBuilder: (context, index) {
          final region = regions[index];
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(
              vertical: 4,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
              leading: CircleAvatar(
                backgroundColor: Colors.blue[100],
                child: Text(
                  region['jp']![0],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              title: Text(
                region['kr']!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                region['jp']!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[400],
              ),
              onTap: () {
                print('${region['kr']} 선택됨');
                Navigator.pop(context, region);
              },
            ),
          );
        },
      ),
    );
  }
}
