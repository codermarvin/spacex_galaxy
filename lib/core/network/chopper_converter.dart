import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class SpacexJsonConverter extends JsonConverter {
  final Map<Type, JsonFactory> factories;

  const SpacexJsonConverter(this.factories);

  @override
  FutureOr<Response<ResultType>> convertResponse<ResultType, Item>(
    Response response,
  ) async {
    final jsonResponse = await super.convertResponse(response);
    final body = jsonResponse.body;

    return jsonResponse.copyWith<ResultType>(
      body: _decode<Item>(body) as ResultType,
    );
  }

  dynamic _decode<Item>(dynamic body) {
    if (body is List) {
      return body.map((item) => _decode<Item>(item) as Item).toList();
    }

    if (body is Map<String, dynamic>) {
      final factory = factories[Item];
      if (factory == null) return body;
      return factory(body);
    }

    return body;
  }
}

final spacexFactories = {
  LaunchModel: (Map<String, dynamic> json) => LaunchModel.fromJson(json),
  RocketModel: (Map<String, dynamic> json) => RocketModel.fromJson(json),
};
