part of 'launches_bloc.dart';

enum LaunchesStatus {
  initial,
  loading,
  loaded,
  error,
  detailsLoading,
  detailsLoaded,
}

class LaunchesState extends Equatable {
  final List<LaunchModel> launches;
  final List<LaunchModel> rocketLaunches;
  final LaunchModel? selectedLaunch;
  final RocketModel? selectedRocket;
  final LaunchesStatus status;
  final String? errorMessage;

  const LaunchesState({
    this.launches = const [],
    this.rocketLaunches = const [],
    this.selectedLaunch,
    this.selectedRocket,
    this.status = LaunchesStatus.initial,
    this.errorMessage,
  });

  LaunchesState copyWith({
    List<LaunchModel>? launches,
    List<LaunchModel>? rocketLaunches,
    LaunchModel? selectedLaunch,
    RocketModel? selectedRocket,
    LaunchesStatus? status,
    String? errorMessage,
  }) {
    return LaunchesState(
      launches: launches ?? this.launches,
      rocketLaunches: rocketLaunches ?? this.rocketLaunches,
      selectedLaunch: selectedLaunch ?? this.selectedLaunch,
      selectedRocket: selectedRocket ?? this.selectedRocket,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    launches,
    rocketLaunches,
    selectedLaunch,
    selectedRocket,
    status,
    errorMessage,
  ];
}
