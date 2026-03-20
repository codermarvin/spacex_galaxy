import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_galaxy_explorer/app/router/app_router.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_theme.dart';
import 'package:spacex_galaxy_explorer/core/network/spacex_api_service.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/datasources/launches_remote_data_source.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/repositories/launches_repository_impl.dart';
import 'package:spacex_galaxy_explorer/features/launches/domain/repositories/launches_repository.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/bloc/launches_bloc.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/datasources/rockets_remote_data_source.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/repositories/rockets_repository_impl.dart';
import 'package:spacex_galaxy_explorer/features/rockets/domain/repositories/rockets_repository.dart';
import 'package:spacex_galaxy_explorer/features/rockets/presentation/bloc/rockets_bloc.dart';

void main() {
  final apiService = SpacexApiService.create();

  final rocketsRemoteDataSource = RocketsRemoteDataSourceImpl(apiService);
  final rocketsRepository = RocketsRepositoryImpl(rocketsRemoteDataSource);

  final launchesRemoteDataSource = LaunchesRemoteDataSourceImpl(apiService);
  final launchesRepository = LaunchesRepositoryImpl(launchesRemoteDataSource);

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<RocketsRepository>(
          create: (context) => rocketsRepository,
        ),
        RepositoryProvider<LaunchesRepository>(
          create: (context) => launchesRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RocketsBloc>(
            create: (context) =>
                RocketsBloc(repository: context.read<RocketsRepository>()),
          ),
          BlocProvider<LaunchesBloc>(
            create: (context) => LaunchesBloc(
              launchesRepository: context.read<LaunchesRepository>(),
              rocketsRepository: context.read<RocketsRepository>(),
            ),
          ),
        ],
        child: const SpaceXGalaxyExplorer(),
      ),
    ),
  );
}

class SpaceXGalaxyExplorer extends StatelessWidget {
  const SpaceXGalaxyExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SpaceX Galaxy Explorer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
