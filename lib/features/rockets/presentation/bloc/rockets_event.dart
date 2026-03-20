part of 'rockets_bloc.dart';

abstract class RocketsEvent extends Equatable {
  const RocketsEvent();

  @override
  List<Object?> get props => [];
}

class GetRockets extends RocketsEvent {}

class GetRocketDetails extends RocketsEvent {
  final String id;

  const GetRocketDetails(this.id);

  @override
  List<Object?> get props => [id];
}
