import 'package:dartz/dartz.dart';
import 'package:spacex_galaxy_explorer/core/error/failures.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';

abstract class LaunchesRepository {
  Future<Either<Failure, List<LaunchModel>>> getLaunches();
  Future<Either<Failure, LaunchModel>> getLaunch(String id);
}
