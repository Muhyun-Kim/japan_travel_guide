import 'package:flutter/material.dart';

class SkeletonLoader extends StatefulWidget {
  final double width;
  final double height;
  final BorderRadius? borderRadius;

  const SkeletonLoader({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
  });

  @override
  State<SkeletonLoader> createState() => _SkeletonLoaderState();
}

class _SkeletonLoaderState extends State<SkeletonLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.4,
      end: 0.8,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: Colors.grey[300]!.withOpacity(_animation.value),
            borderRadius: widget.borderRadius ?? BorderRadius.circular(4),
          ),
        );
      },
    );
  }
}

class ShopCardSkeleton extends StatelessWidget {
  const ShopCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 맛집 이름
            const SkeletonLoader(
              width: 200,
              height: 24,
            ),
            const SizedBox(height: 12),
            
            // 캐치 프레이즈
            const SkeletonLoader(
              width: double.infinity,
              height: 16,
            ),
            const SizedBox(height: 8),
            const SkeletonLoader(
              width: double.infinity,
              height: 16,
            ),
            const SizedBox(height: 12),
            
            // 장르와 예산
            Row(
              children: [
                const SkeletonLoader(
                  width: 100,
                  height: 16,
                ),
                const SizedBox(width: 16),
                const SkeletonLoader(
                  width: 80,
                  height: 16,
                ),
              ],
            ),
            const SizedBox(height: 12),
            
            // 주소
            const SkeletonLoader(
              width: double.infinity,
              height: 16,
            ),
            const SizedBox(height: 8),
            
            // 액세스 정보
            const SkeletonLoader(
              width: double.infinity,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}