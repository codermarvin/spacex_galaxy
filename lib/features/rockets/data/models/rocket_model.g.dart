// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RocketModel _$RocketModelFromJson(Map<String, dynamic> json) => _RocketModel(
  id: json['id'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  active: json['active'] as bool,
  stages: (json['stages'] as num).toInt(),
  boosters: (json['boosters'] as num).toInt(),
  costPerLaunch: (json['cost_per_launch'] as num).toInt(),
  successRatePct: (json['success_rate_pct'] as num).toInt(),
  firstFlight: json['first_flight'] as String,
  country: json['country'] as String,
  company: json['company'] as String,
  description: json['description'] as String,
  wikipedia: json['wikipedia'] as String,
  flickrImages: (json['flickr_images'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$RocketModelToJson(_RocketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'success_rate_pct': instance.successRatePct,
      'first_flight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'description': instance.description,
      'wikipedia': instance.wikipedia,
      'flickr_images': instance.flickrImages,
    };
