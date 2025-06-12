import 'package:flutter/material.dart';

class PlaceMain extends StatelessWidget {
  const PlaceMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('관광명소')),
      body: Center(child: Text('관광명소 화면')),
    );
  }
}
