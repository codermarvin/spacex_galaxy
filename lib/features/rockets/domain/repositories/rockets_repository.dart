import 'package:dartz/dartz.dart';
import 'package:spacex_galaxy_explorer/core/error/failures.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';

abstract class RocketsRepository {
  Future<Either<Failure, List<RocketModel>>> getRockets();
  Future<Either<Failure, RocketModel>> getRocket(String id);
}
