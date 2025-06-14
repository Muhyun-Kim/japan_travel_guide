import 'package:flutter/material.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';

class RestaurantMain extends StatelessWidget {
  const RestaurantMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('맛집')),
      body: Center(
        child: TextButton(
          onPressed: () {
            HotPepperApi.testApiKey();
          },
          child: Text('test'),
        ),
      ),
    );
  }
}
