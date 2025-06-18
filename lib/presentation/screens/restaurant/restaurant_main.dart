import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';
import 'package:japan_travel_guide/presentation/providers/selected_regions_provider.dart';

class RestaurantMain extends ConsumerWidget {
  const RestaurantMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRegions = ref.watch(selectedRegionsProvider);
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
