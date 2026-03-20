import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_model.freezed.dart';
part 'rocket_model.g.dart';

@freezed
abstract class RocketModel with _$RocketModel {
  const factory RocketModel({
    required String id,
    required String name,
    required String type,
    required bool active,
    required int stages,
    required int boosters,
    @JsonKey(name: 'cost_per_launch') required int costPerLaunch,
    @JsonKey(name: 'success_rate_pct') required int successRatePct,
    @JsonKey(name: 'first_flight') required String firstFlight,
    required String country,
    required String company,
    required String description,
    required String wikipedia,
    @JsonKey(name: 'flickr_images') required List<String> flickrImages,
  }) = _RocketModel;

  factory RocketModel.fromJson(Map<String, dynamic> json) =>
      _$RocketModelFromJson(json);
}
