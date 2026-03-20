import 'package:chopper/chopper.dart';
import 'package:spacex_galaxy_explorer/core/network/api_constants.dart';
import 'package:spacex_galaxy_explorer/core/network/chopper_converter.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';

part 'spacex_api_service.chopper.dart';

@ChopperApi()
abstract class SpacexApiService extends ChopperService {
  @GET(path: ApiConstants.launches)
  Future<Response<List<LaunchModel>>> getLaunches();

  @GET(path: '${ApiConstants.launches}/{id}')
  Future<Response<LaunchModel>> getLaunch(@Path('id') String id);

  @GET(path: ApiConstants.rockets)
  Future<Response<List<RocketModel>>> getRockets();

  @GET(path: '${ApiConstants.rockets}/{id}')
  Future<Response<RocketModel>> getRocket(@Path('id') String id);

  static SpacexApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(ApiConstants.baseUrl),
      services: [_$SpacexApiService()],
      converter: SpacexJsonConverter(spacexFactories),
      errorConverter: const JsonConverter(),
      interceptors: [HttpLoggingInterceptor()],
    );
    return _$SpacexApiService(client);
  }
}
