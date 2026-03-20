// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'spacex_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SpacexApiService extends SpacexApiService {
  _$SpacexApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SpacexApiService;

  @override
  Future<Response<List<LaunchModel>>> getLaunches() {
    final Uri $url = Uri.parse('/launches');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<LaunchModel>, LaunchModel>($request);
  }

  @override
  Future<Response<LaunchModel>> getLaunch(String id) {
    final Uri $url = Uri.parse('/launches/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<LaunchModel, LaunchModel>($request);
  }

  @override
  Future<Response<List<RocketModel>>> getRockets() {
    final Uri $url = Uri.parse('/rockets');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RocketModel>, RocketModel>($request);
  }

  @override
  Future<Response<RocketModel>> getRocket(String id) {
    final Uri $url = Uri.parse('/rockets/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<RocketModel, RocketModel>($request);
  }
}
