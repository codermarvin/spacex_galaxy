import 'package:spacex_galaxy_explorer/core/network/spacex_api_service.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';

abstract class LaunchesRemoteDataSource {
  Future<List<LaunchModel>> getLaunches();
  Future<LaunchModel> getLaunch(String id);
}

class LaunchesRemoteDataSourceImpl implements LaunchesRemoteDataSource {
  final SpacexApiService apiService;

  LaunchesRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<LaunchModel>> getLaunches() async {
    final response = await apiService.getLaunches();
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception(response.error.toString());
    }
  }

  @override
  Future<LaunchModel> getLaunch(String id) async {
    final response = await apiService.getLaunch(id);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception(response.error.toString());
    }
  }
}
