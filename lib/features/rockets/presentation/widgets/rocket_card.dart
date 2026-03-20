import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex_galaxy_explorer/core/widgets/app_card.dart';
import 'package:spacex_galaxy_explorer/core/widgets/shimmer_loading.dart';
import 'package:spacex_galaxy_explorer/core/widgets/status_badge.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';

class RocketCard extends StatelessWidget {
  final RocketModel rocket;
  final VoidCallback onTap;

  const RocketCard({super.key, required this.rocket, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Rocket Image
          if (rocket.flickrImages.isNotEmpty)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: CachedNetworkImage(
                imageUrl: rocket.flickrImages.first,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const ShimmerLoading.rectangular(
                  height: 200,
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  height: 200,
                  color: Colors.grey[900],
                  child: const Icon(Icons.rocket, size: 50, color: Colors.grey),
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        rocket.name,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    if (rocket.active)
                      StatusBadge.success(label: 'Active')
                    else
                      StatusBadge.failure(label: 'Inactive'),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  rocket.type.toUpperCase(),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  rocket.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStat(context, 'Success', '${rocket.successRatePct}%'),
                    _buildStat(context, 'Stages', '${rocket.stages}'),
                    _buildStat(
                      context,
                      'First Flight',
                      rocket.firstFlight.split('-').first,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(BuildContext context, String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Colors.white54),
        ),
      ],
    );
  }
}
