// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) => _LaunchModel(
  id: json['id'] as String,
  name: json['name'] as String,
  dateUtc: DateTime.parse(json['date_utc'] as String),
  flightNumber: (json['flight_number'] as num?)?.toInt() ?? 0,
  success: json['success'] as bool?,
  details: json['details'] as String?,
  links: json['links'] == null
      ? const LaunchLinks()
      : LaunchLinks.fromJson(json['links'] as Map<String, dynamic>),
  upcoming: json['upcoming'] as bool? ?? false,
  rocket: json['rocket'] as String?,
  crew: (json['crew'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ships: (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
  capsules: (json['capsules'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  payloads: (json['payloads'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  launchpad: json['launchpad'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$LaunchModelToJson(_LaunchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date_utc': instance.dateUtc.toIso8601String(),
      'flight_number': instance.flightNumber,
      'success': instance.success,
      'details': instance.details,
      'links': instance.links,
      'upcoming': instance.upcoming,
      'rocket': instance.rocket,
      'crew': instance.crew,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'status': instance.status,
    };

_LaunchLinks _$LaunchLinksFromJson(Map<String, dynamic> json) => _LaunchLinks(
  patch: json['patch'] == null
      ? null
      : PatchLinks.fromJson(json['patch'] as Map<String, dynamic>),
  reddit: json['reddit'] == null
      ? null
      : RedditLinks.fromJson(json['reddit'] as Map<String, dynamic>),
  flickr: json['flickr'] == null
      ? null
      : FlickrLinks.fromJson(json['flickr'] as Map<String, dynamic>),
  presskit: json['presskit'] as String?,
  webcast: json['webcast'] as String?,
  youtubeId: json['youtube_id'] as String?,
  article: json['article'] as String?,
  wikipedia: json['wikipedia'] as String?,
);

Map<String, dynamic> _$LaunchLinksToJson(_LaunchLinks instance) =>
    <String, dynamic>{
      'patch': instance.patch,
      'reddit': instance.reddit,
      'flickr': instance.flickr,
      'presskit': instance.presskit,
      'webcast': instance.webcast,
      'youtube_id': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

_PatchLinks _$PatchLinksFromJson(Map<String, dynamic> json) => _PatchLinks(
  small: json['small'] as String?,
  large: json['large'] as String?,
);

Map<String, dynamic> _$PatchLinksToJson(_PatchLinks instance) =>
    <String, dynamic>{'small': instance.small, 'large': instance.large};

_RedditLinks _$RedditLinksFromJson(Map<String, dynamic> json) => _RedditLinks(
  campaign: json['campaign'] as String?,
  launch: json['launch'] as String?,
  media: json['media'] as String?,
  recovery: json['recovery'] as String?,
);

Map<String, dynamic> _$RedditLinksToJson(_RedditLinks instance) =>
    <String, dynamic>{
      'campaign': instance.campaign,
      'launch': instance.launch,
      'media': instance.media,
      'recovery': instance.recovery,
    };

_FlickrLinks _$FlickrLinksFromJson(Map<String, dynamic> json) => _FlickrLinks(
  small: (json['small'] as List<dynamic>?)?.map((e) => e as String).toList(),
  original: (json['original'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$FlickrLinksToJson(_FlickrLinks instance) =>
    <String, dynamic>{'small': instance.small, 'original': instance.original};
