part of 'launches_bloc.dart';

abstract class LaunchesEvent extends Equatable {
  const LaunchesEvent();

  @override
  List<Object?> get props => [];
}

class GetLaunches extends LaunchesEvent {}

class GetLaunchDetails extends LaunchesEvent {
  final String id;

  const GetLaunchDetails(this.id);

  @override
  List<Object?> get props => [id];
}

class GetLaunchesByRocket extends LaunchesEvent {
  final String rocketId;

  const GetLaunchesByRocket(this.rocketId);

  @override
  List<Object?> get props => [rocketId];
}
