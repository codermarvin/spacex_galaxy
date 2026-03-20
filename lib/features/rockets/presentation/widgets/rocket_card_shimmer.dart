import 'package:flutter/material.dart';
import 'package:spacex_galaxy_explorer/core/widgets/app_card.dart';
import 'package:spacex_galaxy_explorer/core/widgets/shimmer_loading.dart';

class RocketCardShimmer extends StatelessWidget {
  const RocketCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Simulated Rocket Image
          const ShimmerLoading.rectangular(
            height: 200,
            shapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerLoading.rectangular(height: 24, width: 150),
                    ShimmerLoading.rectangular(height: 24, width: 80),
                  ],
                ),
                const SizedBox(height: 12),
                const ShimmerLoading.rectangular(height: 16, width: 100),
                const SizedBox(height: 16),
                const ShimmerLoading.rectangular(height: 14),
                const SizedBox(height: 6),
                const ShimmerLoading.rectangular(height: 14, width: 250),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    3,
                    (index) => const Column(
                      children: [
                        ShimmerLoading.rectangular(height: 16, width: 40),
                        SizedBox(height: 4),
                        ShimmerLoading.rectangular(height: 12, width: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
