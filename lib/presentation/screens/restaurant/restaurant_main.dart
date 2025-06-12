import 'package:flutter/material.dart';

class RestaurantMain extends StatelessWidget {
  const RestaurantMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('맛집')),
      body: Center(child: Text('맛집 화면')),
    );
  }
}
