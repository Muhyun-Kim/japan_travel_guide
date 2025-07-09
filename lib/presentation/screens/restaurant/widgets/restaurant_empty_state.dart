import 'package:flutter/material.dart';

class RestaurantEmptyState extends StatelessWidget {
  const RestaurantEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
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
}
