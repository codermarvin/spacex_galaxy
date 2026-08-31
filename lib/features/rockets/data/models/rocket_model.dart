import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_model.freezed.dart';
part 'rocket_model.g.dart';

@freezed
abstract class RocketModel with _$RocketModel {
  const factory RocketModel({
    required String id,
    required String name,
    @Default('rocket') String type,
    @Default(true) bool active,
    @Default(2) int stages,
    @Default(0) int boosters,
    @JsonKey(name: 'cost_per_launch') @Default(0) int costPerLaunch,
    @JsonKey(name: 'success_rate_pct') @Default(0) num successRatePct,
    @JsonKey(name: 'first_flight') @Default('N/A') String firstFlight,
    @Default('United States') String country,
    @Default('SpaceX') String company,
    @Default('') String description,
    @Default('') String wikipedia,
    @JsonKey(name: 'flickr_images') @Default([]) List<String> flickrImages,
    String? family,
    bool? reusable,
    @JsonKey(name: 'launch_count') int? launchCount,
    @JsonKey(name: 'failed_launches') int? failedLaunches,
    @JsonKey(name: 'successful_launches') int? successfulLaunches,
  }) = _RocketModel;

  factory RocketModel.fromJson(Map<String, dynamic> json) =>
      _$RocketModelFromJson(_transformJson(json));

  static Map<String, dynamic> _transformJson(Map<String, dynamic> json) {
    final Map<String, dynamic> mutableJson = Map<String, dynamic>.from(json);
    mutableJson['id'] ??= mutableJson['name'] ?? '';
    mutableJson['cost_per_launch'] ??= mutableJson['launch_cost_usd'] ?? 0;
    mutableJson['first_flight'] ??= mutableJson['maiden_flight'] ?? 'N/A';
    mutableJson['type'] ??= 'rocket';
    mutableJson['active'] ??= true;
    mutableJson['stages'] ??= 2;
    mutableJson['boosters'] ??= 0;
    mutableJson['country'] ??= 'United States';
    mutableJson['company'] ??= 'SpaceX';
    mutableJson['description'] ??= '';
    mutableJson['wikipedia'] ??= '';
    mutableJson['flickr_images'] ??= <String>[];
    return mutableJson;
  }
}
