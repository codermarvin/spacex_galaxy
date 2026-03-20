import 'package:dartz/dartz.dart';
import 'package:spacex_galaxy_explorer/core/error/failures.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/datasources/launches_remote_data_source.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';
import 'package:spacex_galaxy_explorer/features/launches/domain/repositories/launches_repository.dart';

class LaunchesRepositoryImpl implements LaunchesRepository {
  final LaunchesRemoteDataSource remoteDataSource;

  LaunchesRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<LaunchModel>>> getLaunches() async {
    try {
      final launches = await remoteDataSource.getLaunches();
      return Right(launches);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LaunchModel>> getLaunch(String id) async {
    try {
      final launch = await remoteDataSource.getLaunch(id);
      return Right(launch);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
