import 'package:dartz/dartz.dart';
import 'package:spacex_galaxy_explorer/core/error/failures.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/datasources/rockets_remote_data_source.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';
import 'package:spacex_galaxy_explorer/features/rockets/domain/repositories/rockets_repository.dart';

class RocketsRepositoryImpl implements RocketsRepository {
  final RocketsRemoteDataSource remoteDataSource;

  RocketsRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<RocketModel>>> getRockets() async {
    try {
      final rockets = await remoteDataSource.getRockets();
      return Right(rockets);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, RocketModel>> getRocket(String id) async {
    try {
      final rocket = await remoteDataSource.getRocket(id);
      return Right(rocket);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
