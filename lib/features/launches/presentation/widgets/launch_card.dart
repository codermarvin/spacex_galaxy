import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spacex_galaxy_explorer/core/widgets/app_card.dart';
import 'package:spacex_galaxy_explorer/core/widgets/shimmer_loading.dart';
import 'package:spacex_galaxy_explorer/core/widgets/status_badge.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';

class LaunchCard extends StatelessWidget {
  final LaunchModel launch;
  final VoidCallback onTap;

  const LaunchCard({super.key, required this.launch, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final dateStr = DateFormat('MMM dd, yyyy').format(launch.dateUtc);
    final success = launch.success;
    final upcoming = launch.upcoming;

    return AppCard(
      onTap: onTap,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mission Patch
          _buildMissionPatch(),
          const SizedBox(width: 16),
          // Launch Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        launch.name,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '#${launch.flightNumber}',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  dateStr,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 8),
                if (launch.details != null)
                  Text(
                    launch.details!,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    if (upcoming)
                      StatusBadge.info(label: 'Upcoming')
                    else if (success == true)
                      StatusBadge.success(label: 'Success')
                    else if (success == false)
                      StatusBadge.failure(label: 'Failed')
                    else
                      StatusBadge.warning(label: 'Unknown'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMissionPatch() {
    final patchUrl = launch.links.patch?.small;

    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: patchUrl != null
          ? CachedNetworkImage(
              imageUrl: patchUrl,
              placeholder: (context, url) =>
                  const ShimmerLoading.circular(width: 60, height: 60),
              errorWidget: (context, url, error) => const Icon(
                Icons.rocket_launch,
                size: 40,
                color: Colors.white24,
              ),
            )
          : const Icon(Icons.rocket_launch, size: 40, color: Colors.white24),
    );
  }
}
