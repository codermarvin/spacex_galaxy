import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_colors.dart';
import 'package:spacex_galaxy_explorer/core/widgets/main_scaffold.dart';
import 'package:spacex_galaxy_explorer/core/widgets/shimmer_loading.dart';
import 'package:spacex_galaxy_explorer/core/widgets/status_badge.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/bloc/launches_bloc.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';
import 'package:url_launcher/url_launcher.dart';

class RocketDetailsScreen extends StatelessWidget {
  final RocketModel rocket;

  const RocketDetailsScreen({super.key, required this.rocket});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: rocket.name,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel (Simple for now, just first image)
            if (rocket.flickrImages.isNotEmpty)
              CachedNetworkImage(
                imageUrl: rocket.flickrImages.first,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const ShimmerLoading.rectangular(
                  height: 300,
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
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
                      Text(
                        rocket.name,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      if (rocket.active)
                        StatusBadge.success(label: 'Active')
                      else
                        StatusBadge.failure(label: 'Inactive'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${rocket.company} • ${rocket.country}',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 16),
                  _buildSectionTitle(context, 'Description'),
                  const SizedBox(height: 8),
                  Text(
                    rocket.description,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 24),
                  _buildSectionTitle(context, 'Specifications'),
                  const SizedBox(height: 12),
                  _buildSpecGrid(context),
                  const SizedBox(height: 32),
                  _buildSectionTitle(context, 'Related Launches'),
                  const SizedBox(height: 12),
                  _buildRelatedLaunches(context),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => _launchURL(rocket.wikipedia),
                      icon: const Icon(Icons.open_in_new),
                      label: const Text('View on Wikipedia'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRelatedLaunches(BuildContext context) {
    return BlocBuilder<LaunchesBloc, LaunchesState>(
      builder: (context, state) {
        if (state.status == LaunchesStatus.initial) {
          context.read<LaunchesBloc>().add(GetLaunchesByRocket(rocket.id));
          return const Center(child: CircularProgressIndicator());
        }

        if (state.status == LaunchesStatus.loading &&
            state.rocketLaunches.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.rocketLaunches.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'No launches found for this rocket.',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.white54),
            ),
          );
        }

        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.rocketLaunches.length > 5
              ? 5
              : state.rocketLaunches.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final launch = state.rocketLaunches[index];
            return Card(
              color: AppColors.surface,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 0.5,
                ),
              ),
              child: ListTile(
                onTap: () =>
                    context.push('/launches/${launch.id}', extra: launch),
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: launch.links.patch?.small != null
                      ? Padding(
                          padding: const EdgeInsets.all(4),
                          child: CachedNetworkImage(
                            imageUrl: launch.links.patch!.small!,
                            placeholder: (context, url) =>
                                const ShimmerLoading.circular(
                                  width: 32,
                                  height: 32,
                                ),
                          ),
                        )
                      : const Icon(
                          Icons.rocket_launch,
                          size: 20,
                          color: Colors.white24,
                        ),
                ),
                title: Text(
                  launch.name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  DateFormat('MMM d, yyyy').format(launch.dateUtc),
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.white54),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 20,
                  color: Colors.white24,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _buildSpecGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        _buildSpecItem(context, 'Stages', '${rocket.stages}'),
        _buildSpecItem(context, 'Boosters', '${rocket.boosters}'),
        _buildSpecItem(context, 'Success Rate', '${rocket.successRatePct}%'),
        _buildSpecItem(
          context,
          'Cost/Launch',
          '\$${(rocket.costPerLaunch / 1000000).toStringAsFixed(1)}M',
        ),
        _buildSpecItem(context, 'First Flight', rocket.firstFlight),
        _buildSpecItem(context, 'Type', rocket.type.toUpperCase()),
      ],
    );
  }

  Widget _buildSpecItem(BuildContext context, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Colors.white54),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
