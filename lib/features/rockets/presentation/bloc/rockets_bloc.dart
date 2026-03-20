import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';
import 'package:spacex_galaxy_explorer/features/rockets/domain/repositories/rockets_repository.dart';

part 'rockets_event.dart';
part 'rockets_state.dart';

class RocketsBloc extends Bloc<RocketsEvent, RocketsState> {
  final RocketsRepository repository;

  RocketsBloc({required this.repository}) : super(RocketsInitial()) {
    on<GetRockets>(_onGetRockets);
    on<GetRocketDetails>(_onGetRocketDetails);
  }

  Future<void> _onGetRockets(
    GetRockets event,
    Emitter<RocketsState> emit,
  ) async {
    emit(RocketsLoading());
    final result = await repository.getRockets();
    result.fold(
      (failure) => emit(RocketsError(failure.toString())),
      (rockets) => emit(RocketsLoaded(rockets)),
    );
  }

  Future<void> _onGetRocketDetails(
    GetRocketDetails event,
    Emitter<RocketsState> emit,
  ) async {
    emit(RocketDetailsLoading());
    final result = await repository.getRocket(event.id);
    result.fold(
      (failure) => emit(RocketsError(failure.toString())),
      (rocket) => emit(RocketDetailsLoaded(rocket)),
    );
  }
}
