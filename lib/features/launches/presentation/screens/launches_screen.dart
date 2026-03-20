import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex_galaxy_explorer/core/widgets/main_scaffold.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/bloc/launches_bloc.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/widgets/launch_card.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/widgets/launch_card_shimmer.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Launches',
      body: BlocBuilder<LaunchesBloc, LaunchesState>(
        builder: (context, state) {
          if (state.status == LaunchesStatus.initial) {
            context.read<LaunchesBloc>().add(GetLaunches());
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == LaunchesStatus.loading &&
              state.launches.isEmpty) {
            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: 6,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) => const LaunchCardShimmer(),
            );
          }

          if (state.status == LaunchesStatus.error && state.launches.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Error: ${state.errorMessage}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<LaunchesBloc>().add(GetLaunches());
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          if (state.launches.isNotEmpty) {
            final screenWidth = MediaQuery.of(context).size.width;

            if (screenWidth <= 600) {
              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: state.launches.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final launch = state.launches[index];
                  return LaunchCard(
                    launch: launch,
                    onTap: () {
                      context.push('/launches/${launch.id}', extra: launch);
                    },
                  );
                },
              );
            }

            final crossAxisCount = screenWidth > 1200 ? 3 : 2;
            return GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.launches.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2.2, // Adjusted for horizontal card
              ),
              itemBuilder: (context, index) {
                final launch = state.launches[index];
                return LaunchCard(
                  launch: launch,
                  onTap: () {
                    context.push('/launches/${launch.id}', extra: launch);
                  },
                );
              },
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
