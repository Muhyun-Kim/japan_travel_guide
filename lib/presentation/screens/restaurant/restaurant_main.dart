import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';
import 'package:japan_travel_guide/presentation/widgets/debug/debug_controls.dart';

class RestaurantMain extends ConsumerStatefulWidget {
  const RestaurantMain({super.key});

  @override
  ConsumerState<RestaurantMain> createState() =>
      _RestaurantMainState();
}

class _RestaurantMainState extends ConsumerState<RestaurantMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedRegions = ref.watch(selectedRegionsProvider);
    final serviceArea = selectedRegions[0].code;
    print(serviceArea);
    return Scaffold(
      appBar: AppBar(
        title: Text('맛집'),
        actions: [
          // 🔧 디버그 버튼 (개발 모드에서만 보임)
          DebugControls(),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final res = await HotPepperApi().getBudgetMaster();
            print("res: ${res}");
          },
          child: Text('test'),
        ),
      ),
    );
  }
}
