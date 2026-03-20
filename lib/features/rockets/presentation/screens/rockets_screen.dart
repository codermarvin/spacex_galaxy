import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex_galaxy_explorer/core/widgets/main_scaffold.dart';
import 'package:spacex_galaxy_explorer/features/rockets/presentation/bloc/rockets_bloc.dart';
import 'package:spacex_galaxy_explorer/features/rockets/presentation/widgets/rocket_card.dart';
import 'package:spacex_galaxy_explorer/features/rockets/presentation/widgets/rocket_card_shimmer.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Rockets',
      body: BlocBuilder<RocketsBloc, RocketsState>(
        builder: (context, state) {
          if (state is RocketsInitial) {
            context.read<RocketsBloc>().add(GetRockets());
            return const Center(child: CircularProgressIndicator());
          } else if (state is RocketsLoading) {
            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: 3,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) => const RocketCardShimmer(),
            );
          } else if (state is RocketsLoaded) {
            final screenWidth = MediaQuery.of(context).size.width;

            if (screenWidth <= 600) {
              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: state.rockets.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final rocket = state.rockets[index];
                  return RocketCard(
                    rocket: rocket,
                    onTap: () {
                      context.push('/rockets/${rocket.id}', extra: rocket);
                    },
                  );
                },
              );
            }

            final crossAxisCount = screenWidth > 900 ? 3 : 2;
            return GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.rockets.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final rocket = state.rockets[index];
                return RocketCard(
                  rocket: rocket,
                  onTap: () {
                    context.push('/rockets/${rocket.id}', extra: rocket);
                  },
                );
              },
            );
          } else if (state is RocketsError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
