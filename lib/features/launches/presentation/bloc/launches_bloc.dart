import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';
import 'package:spacex_galaxy_explorer/features/launches/domain/repositories/launches_repository.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';
import 'package:spacex_galaxy_explorer/features/rockets/domain/repositories/rockets_repository.dart';

part 'launches_event.dart';
part 'launches_state.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  final LaunchesRepository launchesRepository;
  final RocketsRepository rocketsRepository;

  LaunchesBloc({
    required this.launchesRepository,
    required this.rocketsRepository,
  }) : super(const LaunchesState()) {
    on<GetLaunches>(_onGetLaunches);
    on<GetLaunchDetails>(_onGetLaunchDetails);
    on<GetLaunchesByRocket>(_onGetLaunchesByRocket);
  }

  Future<void> _onGetLaunchesByRocket(
    GetLaunchesByRocket event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.loading));
    final result = await launchesRepository.getLaunches();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: LaunchesStatus.error,
          errorMessage: failure.toString(),
        ),
      ),
      (launches) {
        final filteredLaunches =
            launches.where((l) => l.rocket == event.rocketId).toList()
              ..sort((a, b) => b.dateUtc.compareTo(a.dateUtc));
        emit(
          state.copyWith(
            status: LaunchesStatus.loaded,
            launches: launches,
            rocketLaunches: filteredLaunches,
          ),
        );
      },
    );
  }

  Future<void> _onGetLaunches(
    GetLaunches event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.loading));
    final result = await launchesRepository.getLaunches();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: LaunchesStatus.error,
          errorMessage: failure.toString(),
        ),
      ),
      (launches) => emit(
        state.copyWith(status: LaunchesStatus.loaded, launches: launches),
      ),
    );
  }

  Future<void> _onGetLaunchDetails(
    GetLaunchDetails event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.detailsLoading));
    final launchResult = await launchesRepository.getLaunch(event.id);

    await launchResult.fold(
      (failure) async => emit(
        state.copyWith(
          status: LaunchesStatus.error,
          errorMessage: failure.toString(),
        ),
      ),
      (launch) async {
        if (launch.rocket != null) {
          final rocketResult = await rocketsRepository.getRocket(
            launch.rocket!,
          );
          await rocketResult.fold(
            (failure) async => emit(
              state.copyWith(
                status: LaunchesStatus.detailsLoaded,
                selectedLaunch: launch,
              ),
            ),
            (rocket) async => emit(
              state.copyWith(
                status: LaunchesStatus.detailsLoaded,
                selectedLaunch: launch,
                selectedRocket: rocket,
              ),
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: LaunchesStatus.detailsLoaded,
              selectedLaunch: launch,
            ),
          );
        }
      },
    );
  }
}
