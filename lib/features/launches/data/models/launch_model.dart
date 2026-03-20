import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_model.freezed.dart';
part 'launch_model.g.dart';

@freezed
abstract class LaunchModel with _$LaunchModel {
  const factory LaunchModel({
    required String id,
    required String name,
    @JsonKey(name: 'date_utc') required DateTime dateUtc,
    @JsonKey(name: 'flight_number') required int flightNumber,
    bool? success,
    String? details,
    required LaunchLinks links,
    @Default(false) bool upcoming,
    String? rocket,
    List<String>? crew,
    List<String>? ships,
    List<String>? capsules,
    List<String>? payloads,
    String? launchpad,
  }) = _LaunchModel;

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);
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
