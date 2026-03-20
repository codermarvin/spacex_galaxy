import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_colors.dart';
import 'package:spacex_galaxy_explorer/core/widgets/main_scaffold.dart';
import 'package:spacex_galaxy_explorer/core/widgets/shimmer_loading.dart';
import 'package:spacex_galaxy_explorer/core/widgets/status_badge.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/bloc/launches_bloc.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchDetailsScreen extends StatefulWidget {
  final LaunchModel launch;

  const LaunchDetailsScreen({super.key, required this.launch});

  @override
  State<LaunchDetailsScreen> createState() => _LaunchDetailsScreenState();
}

class _LaunchDetailsScreenState extends State<LaunchDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LaunchesBloc>().add(GetLaunchDetails(widget.launch.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchesBloc, LaunchesState>(
      builder: (context, state) {
        LaunchModel launch = widget.launch;
        RocketModel? rocket;

        if (state.status == LaunchesStatus.detailsLoaded) {
          launch = state.selectedLaunch ?? widget.launch;
          rocket = state.selectedRocket;
        }

        final dateStr = DateFormat(
          'MMMM dd, yyyy HH:mm',
        ).format(launch.dateUtc);
        final success = launch.success;
        final upcoming = launch.upcoming;

        return MainScaffold(
          title: launch.name,
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Mission Hero Image / Patch
                _buildHeroSection(context, launch),
                const SizedBox(height: 24),

                // Header Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            launch.name,
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Flight Number: #${launch.flightNumber}',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    if (upcoming)
                      StatusBadge.info(label: 'Upcoming')
                    else if (success == true)
                      StatusBadge.success(label: 'Success')
                    else if (success == false)
                      StatusBadge.failure(label: 'Failed')
                    else
                      StatusBadge.warning(label: 'Unknown Status'),
                  ],
                ),
                const SizedBox(height: 24),

                // Rocket Info Section
                _buildRocketSection(context, rocket),
                const SizedBox(height: 24),

                // Launch Details
                _buildSection(
                  context,
                  'Date & Time',
                  dateStr,
                  icon: Icons.calendar_today,
                ),
                if (launch.details != null)
                  _buildSection(
                    context,
                    'Mission Details',
                    launch.details!,
                    icon: Icons.info_outline,
                  ),

                const SizedBox(height: 24),

                // Links Section
                Text(
                  'Links',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                _buildLinksGrid(launch),

                const SizedBox(height: 32),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeroSection(BuildContext context, LaunchModel launch) {
    final patchUrl = launch.links.patch?.large ?? launch.links.patch?.small;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white10),
        ),
        child: patchUrl != null
            ? CachedNetworkImage(
                imageUrl: patchUrl,
                height: 200,
                width: 200,
                placeholder: (context, url) =>
                    const ShimmerLoading.circular(width: 150, height: 150),
                errorWidget: (context, url, error) => const Icon(
                  Icons.rocket_launch,
                  size: 100,
                  color: Colors.white24,
                ),
              )
            : const Icon(Icons.rocket_launch, size: 100, color: Colors.white24),
      ),
    );
  }

  Widget _buildRocketSection(BuildContext context, RocketModel? rocket) {
    return InkWell(
      onTap: rocket != null
          ? () => context.push('/rockets/${rocket.id}', extra: rocket)
          : null,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            Icon(Icons.rocket, color: AppColors.primary, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rocket Used',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white54,
                          letterSpacing: 1.2,
                        ),
                      ),
                      if (rocket != null)
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.white54,
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  if (rocket != null)
                    Text(
                      rocket.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  else
                    const ShimmerLoading.rectangular(height: 24, width: 150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    String content, {
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: AppColors.primary),
              const SizedBox(width: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.white, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildLinksGrid(LaunchModel launch) {
    final links = launch.links;
    final List<Widget> linkButtons = [];

    if (links.webcast != null) {
      linkButtons.add(
        _buildLinkButton('Webcast', links.webcast!, Icons.play_circle_outline),
      );
    }
    if (links.wikipedia != null) {
      linkButtons.add(
        _buildLinkButton('Wikipedia', links.wikipedia!, Icons.article_outlined),
      );
    }
    if (links.article != null) {
      linkButtons.add(
        _buildLinkButton('Article', links.article!, Icons.newspaper_outlined),
      );
    }
    if (links.reddit?.launch != null) {
      linkButtons.add(
        _buildLinkButton('Reddit', links.reddit!.launch!, Icons.forum_outlined),
      );
    }

    if (linkButtons.isEmpty) {
      return const Text(
        'No links available',
        style: TextStyle(color: Colors.white54),
      );
    }

    return Wrap(spacing: 12, runSpacing: 12, children: linkButtons);
  }

  Widget _buildLinkButton(String label, String url, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () => _launchURL(url),
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white10,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
