// app/router.dart 전체 내용
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/place/place_main.dart';
import '../presentation/screens/restaurant/restaurant_main.dart';

// router 정의 추가
final GoRouter router = GoRouter(
  initialLocation: '/restaurant',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainScaffold(child: child);
      },
      routes: [
        GoRoute(
          path: '/restaurant',
          builder: (context, state) => RestaurantMain(),
        ),
        GoRoute(
          path: '/places',
          builder: (context, state) => PlaceMain(),
        ),
      ],
    ),
  ],
);

class MainScaffold extends StatefulWidget {
  final Widget child;

  const MainScaffold({super.key, required this.child});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (index == 0) {
            context.go('/restaurant');
          } else if (index == 1) {
            context.go('/places');
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: '맛집',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: '관광명소',
          ),
        ],
      ),
    );
  }
}
