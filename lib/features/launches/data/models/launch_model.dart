import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_model.freezed.dart';
part 'launch_model.g.dart';

@freezed
abstract class LaunchModel with _$LaunchModel {
  const factory LaunchModel({
    required String id,
    required String name,
    @JsonKey(name: 'date_utc') required DateTime dateUtc,
    @JsonKey(name: 'flight_number') @Default(0) int flightNumber,
    bool? success,
    String? details,
    @Default(LaunchLinks()) LaunchLinks links,
    @Default(false) bool upcoming,
    String? rocket,
    List<String>? crew,
    List<String>? ships,
    List<String>? capsules,
    List<String>? payloads,
    String? launchpad,
    String? status,
  }) = _LaunchModel;

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(_transformJson(json));

  static Map<String, dynamic> _transformJson(Map<String, dynamic> json) {
    final Map<String, dynamic> mutableJson = Map<String, dynamic>.from(json);
    mutableJson['id'] ??= mutableJson['name'] ?? '';
    mutableJson['flight_number'] ??= 0;
    mutableJson['details'] ??= mutableJson['status'];
    if (mutableJson['date_utc'] == null) {
      mutableJson['date_utc'] = DateTime.now().toIso8601String();
    }
    mutableJson['links'] ??= <String, dynamic>{};
    return mutableJson;
  }
}

@freezed
abstract class LaunchLinks with _$LaunchLinks {
  const factory LaunchLinks({
    PatchLinks? patch,
    RedditLinks? reddit,
    FlickrLinks? flickr,
    String? presskit,
    String? webcast,
    @JsonKey(name: 'youtube_id') String? youtubeId,
    String? article,
    String? wikipedia,
  }) = _LaunchLinks;

  factory LaunchLinks.fromJson(Map<String, dynamic> json) =>
      _$LaunchLinksFromJson(json);
}

@freezed
abstract class PatchLinks with _$PatchLinks {
  const factory PatchLinks({String? small, String? large}) = _PatchLinks;

  factory PatchLinks.fromJson(Map<String, dynamic> json) =>
      _$PatchLinksFromJson(json);
}

@freezed
abstract class RedditLinks with _$RedditLinks {
  const factory RedditLinks({
    String? campaign,
    String? launch,
    String? media,
    String? recovery,
  }) = _RedditLinks;

  factory RedditLinks.fromJson(Map<String, dynamic> json) =>
      _$RedditLinksFromJson(json);
}

@freezed
abstract class FlickrLinks with _$FlickrLinks {
  const factory FlickrLinks({List<String>? small, List<String>? original}) =
      _FlickrLinks;

  factory FlickrLinks.fromJson(Map<String, dynamic> json) =>
      _$FlickrLinksFromJson(json);
}
