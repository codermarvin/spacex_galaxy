// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RocketModel _$RocketModelFromJson(Map<String, dynamic> json) => _RocketModel(
  id: json['id'] as String,
  name: json['name'] as String,
  type: json['type'] as String? ?? 'rocket',
  active: json['active'] as bool? ?? true,
  stages: (json['stages'] as num?)?.toInt() ?? 2,
  boosters: (json['boosters'] as num?)?.toInt() ?? 0,
  costPerLaunch: (json['cost_per_launch'] as num?)?.toInt() ?? 0,
  successRatePct: json['success_rate_pct'] as num? ?? 0,
  firstFlight: json['first_flight'] as String? ?? 'N/A',
  country: json['country'] as String? ?? 'United States',
  company: json['company'] as String? ?? 'SpaceX',
  description: json['description'] as String? ?? '',
  wikipedia: json['wikipedia'] as String? ?? '',
  flickrImages:
      (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  family: json['family'] as String?,
  reusable: json['reusable'] as bool?,
  launchCount: (json['launch_count'] as num?)?.toInt(),
  failedLaunches: (json['failed_launches'] as num?)?.toInt(),
  successfulLaunches: (json['successful_launches'] as num?)?.toInt(),
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
      'family': instance.family,
      'reusable': instance.reusable,
      'launch_count': instance.launchCount,
      'failed_launches': instance.failedLaunches,
      'successful_launches': instance.successfulLaunches,
    };
