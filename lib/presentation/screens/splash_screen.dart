import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  bool _hasNavigated = false;
  bool _isInitialLoad = true;

  void _checkAndNavigate() {
    if (_hasNavigated) {
      print('이미 네비게이션 완료 - 스킵');
      return;
    }

    final selectedRegions = ref.read(selectedRegionsProvider);
    print('네비게이션 체크 - 선택된 지역: $selectedRegions, 초기로딩: $_isInitialLoad');
    
    // 초기 로딩 상태에서는 네비게이션하지 않음
    if (_isInitialLoad) {
      print('초기 로딩 상태 - 대기 중...');
      _isInitialLoad = false;
      return;
    }

    print('데이터 로딩 완료 - 네비게이션 실행!');
    _hasNavigated = true;

    if (selectedRegions.isNotEmpty) {
      print('지역 선택됨: /restaurant로 이동');
      context.go('/restaurant');
    } else {
      print('지역 비어있음: /region-select로 이동');
      context.go('/region-select');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Provider 상태를 watch로 감지 - 데이터 로딩 완료 시 자동 업데이트
    final selectedRegions = ref.watch(selectedRegionsProvider);
    
    // 빌드가 완료된 후 네비게이션 체크
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndNavigate();
    });
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 로고나 앱 이름
            Text(
              'Japan Travel Guide',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 32),
            // 로딩 인디케이터
            CircularProgressIndicator(),
            SizedBox(height: 16),
            // 디버그 정보 (실시간 상태 확인)
            Text(
              '현재 상태: $selectedRegions',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
