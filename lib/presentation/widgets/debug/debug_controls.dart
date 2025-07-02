import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/services/region_storage.dart';
import '../../providers/selected_regions_provider.dart';

/// 🛠️ 개발 중에만 보이는 디버그 컨트롤 위젯
/// kDebugMode가 false일 때는 빈 위젯을 반환합니다.
class DebugControls extends ConsumerWidget {
  const DebugControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 🔧 임시: kDebugMode 체크 비활성화 (테스트용)
    // if (!kDebugMode) {
    //   return const SizedBox.shrink();
    // }

    return IconButton(
      icon: const Icon(Icons.bug_report, color: Colors.orange),
      tooltip: '개발자 도구',
      onPressed: () => _showDebugDialog(context, ref),
    );
  }

  /// 디버그 다이얼로그 표시
  void _showDebugDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => DebugDialog(ref: ref),
    );
  }
}

/// 🛠️ 디버그 기능들을 모아놓은 다이얼로그
class DebugDialog extends StatelessWidget {
  final WidgetRef ref;

  const DebugDialog({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
        children: [
          Icon(Icons.bug_report, color: Colors.orange),
          SizedBox(width: 8),
          Text('개발자 도구'),
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '로컬 스토리지 관리',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // 🎯 regions 데이터만 삭제
            _buildDebugButton(
              context: context,
              title: 'Regions 삭제',
              subtitle: 'regions 데이터만 삭제',
              icon: Icons.location_off,
              color: Colors.orange,
              onPressed: () => _clearRegions(context),
            ),

            const SizedBox(height: 8),

            // 🎯 모든 로컬 데이터 삭제
            _buildDebugButton(
              context: context,
              title: '전체 데이터 삭제',
              subtitle: '모든 SharedPreferences 삭제',
              icon: Icons.delete_forever,
              color: Colors.red,
              onPressed: () => _clearAllData(context),
            ),

            const SizedBox(height: 8),

            // 🎯 기본값으로 리셋
            _buildDebugButton(
              context: context,
              title: '기본값으로 리셋',
              subtitle: '일본 주요 지역으로 초기화',
              icon: Icons.restore,
              color: Colors.blue,
              onPressed: () => _resetToDefault(context),
            ),

            const SizedBox(height: 8),

            // 🎯 디버그 정보 출력
            _buildDebugButton(
              context: context,
              title: '상태 확인',
              subtitle: '콘솔에 현재 상태 출력',
              icon: Icons.info,
              color: Colors.green,
              onPressed: () => _debugPrintStatus(context),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('닫기'),
        ),
      ],
    );
  }

  /// 공통 버튼 빌더
  Widget _buildDebugButton({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 20),
        label: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(12),
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }

  /// regions 데이터만 삭제
  Future<void> _clearRegions(BuildContext context) async {
    try {
      await RegionStorage.clearRegions();

      // Riverpod provider 무효화
      ref.invalidate(selectedRegionsProvider);

      _showSuccessSnackBar(context, 'Regions 데이터가 삭제되었습니다');
      Navigator.of(context).pop();
    } catch (e) {
      _showErrorSnackBar(context, 'Regions 삭제 실패: $e');
    }
  }

  /// 모든 로컬 데이터 삭제
  Future<void> _clearAllData(BuildContext context) async {
    // 추가 확인 다이얼로그
    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('⚠️ 확인'),
            content: const Text('모든 로컬 데이터가 삭제됩니다.\n정말 진행하시겠습니까?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('취소'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text(
                  '삭제',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );

    if (confirmed == true) {
      try {
        await RegionStorage.clearAllLocalData();

        // 모든 Riverpod provider 무효화
        ref.invalidate(selectedRegionsProvider);

        _showSuccessSnackBar(context, '모든 로컬 데이터가 삭제되었습니다');
        Navigator.of(context).pop();
      } catch (e) {
        _showErrorSnackBar(context, '데이터 삭제 실패: $e');
      }
    }
  }

  /// 기본값으로 리셋
  Future<void> _resetToDefault(BuildContext context) async {
    try {
      await RegionStorage.resetToDefault();

      // Riverpod provider 무효화
      ref.invalidate(selectedRegionsProvider);

      _showSuccessSnackBar(context, '기본 지역으로 리셋되었습니다');
      Navigator.of(context).pop();
    } catch (e) {
      _showErrorSnackBar(context, '리셋 실패: $e');
    }
  }

  /// 디버그 정보 출력
  Future<void> _debugPrintStatus(BuildContext context) async {
    try {
      await RegionStorage.debugPrintStatus();
      _showSuccessSnackBar(context, '콘솔에 디버그 정보가 출력되었습니다');
    } catch (e) {
      _showErrorSnackBar(context, '디버그 정보 출력 실패: $e');
    }
  }

  /// 성공 스낵바
  void _showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  /// 에러 스낵바
  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}

/// 🎯 FloatingActionButton 버전 (간단한 사용)
class DebugFloatingButton extends ConsumerWidget {
  const DebugFloatingButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 🔧 임시: kDebugMode 체크 비활성화 (테스트용)
    // if (!kDebugMode) {
    //   return const SizedBox.shrink();
    // }

    return FloatingActionButton.small(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => DebugDialog(ref: ref),
        );
      },
      backgroundColor: Colors.orange,
      child: const Icon(Icons.bug_report),
    );
  }
}
