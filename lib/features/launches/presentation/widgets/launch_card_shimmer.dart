import 'package:flutter/material.dart';
import 'package:spacex_galaxy_explorer/core/widgets/app_card.dart';
import 'package:spacex_galaxy_explorer/core/widgets/shimmer_loading.dart';

class LaunchCardShimmer extends StatelessWidget {
  const LaunchCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCard(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerLoading.rectangular(
            width: 80,
            height: 80,
            shapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerLoading.rectangular(width: 120, height: 20),
                    ShimmerLoading.rectangular(width: 40, height: 20),
                  ],
                ),
                SizedBox(height: 8),
                ShimmerLoading.rectangular(width: 100, height: 16),
                SizedBox(height: 12),
                ShimmerLoading.rectangular(width: 150, height: 14),
                SizedBox(height: 12),
                ShimmerLoading.rectangular(width: 80, height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
