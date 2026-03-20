import 'package:spacex_galaxy_explorer/core/network/spacex_api_service.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';

abstract class RocketsRemoteDataSource {
  Future<List<RocketModel>> getRockets();
  Future<RocketModel> getRocket(String id);
}

class RocketsRemoteDataSourceImpl implements RocketsRemoteDataSource {
  final SpacexApiService apiService;

  RocketsRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<RocketModel>> getRockets() async {
    final response = await apiService.getRockets();
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception(response.error.toString());
    }
  }

  @override
  Future<RocketModel> getRocket(String id) async {
    final response = await apiService.getRocket(id);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception(response.error.toString());
    }
  }
}
