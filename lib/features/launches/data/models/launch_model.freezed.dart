// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LaunchModel {

 String get id; String get name;@JsonKey(name: 'date_utc') DateTime get dateUtc;@JsonKey(name: 'flight_number') int get flightNumber; bool? get success; String? get details; LaunchLinks get links; bool get upcoming; String? get rocket; List<String>? get crew; List<String>? get ships; List<String>? get capsules; List<String>? get payloads; String? get launchpad; String? get status;
/// Create a copy of LaunchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchModelCopyWith<LaunchModel> get copyWith => _$LaunchModelCopyWithImpl<LaunchModel>(this as LaunchModel, _$identity);

  /// Serializes this LaunchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateUtc, dateUtc) || other.dateUtc == dateUtc)&&(identical(other.flightNumber, flightNumber) || other.flightNumber == flightNumber)&&(identical(other.success, success) || other.success == success)&&(identical(other.details, details) || other.details == details)&&(identical(other.links, links) || other.links == links)&&(identical(other.upcoming, upcoming) || other.upcoming == upcoming)&&(identical(other.rocket, rocket) || other.rocket == rocket)&&const DeepCollectionEquality().equals(other.crew, crew)&&const DeepCollectionEquality().equals(other.ships, ships)&&const DeepCollectionEquality().equals(other.capsules, capsules)&&const DeepCollectionEquality().equals(other.payloads, payloads)&&(identical(other.launchpad, launchpad) || other.launchpad == launchpad)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,dateUtc,flightNumber,success,details,links,upcoming,rocket,const DeepCollectionEquality().hash(crew),const DeepCollectionEquality().hash(ships),const DeepCollectionEquality().hash(capsules),const DeepCollectionEquality().hash(payloads),launchpad,status);

@override
String toString() {
  return 'LaunchModel(id: $id, name: $name, dateUtc: $dateUtc, flightNumber: $flightNumber, success: $success, details: $details, links: $links, upcoming: $upcoming, rocket: $rocket, crew: $crew, ships: $ships, capsules: $capsules, payloads: $payloads, launchpad: $launchpad, status: $status)';
}


}

/// @nodoc
abstract mixin class $LaunchModelCopyWith<$Res>  {
  factory $LaunchModelCopyWith(LaunchModel value, $Res Function(LaunchModel) _then) = _$LaunchModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'date_utc') DateTime dateUtc,@JsonKey(name: 'flight_number') int flightNumber, bool? success, String? details, LaunchLinks links, bool upcoming, String? rocket, List<String>? crew, List<String>? ships, List<String>? capsules, List<String>? payloads, String? launchpad, String? status
});


$LaunchLinksCopyWith<$Res> get links;

}
/// @nodoc
class _$LaunchModelCopyWithImpl<$Res>
    implements $LaunchModelCopyWith<$Res> {
  _$LaunchModelCopyWithImpl(this._self, this._then);

  final LaunchModel _self;
  final $Res Function(LaunchModel) _then;

/// Create a copy of LaunchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? dateUtc = null,Object? flightNumber = null,Object? success = freezed,Object? details = freezed,Object? links = null,Object? upcoming = null,Object? rocket = freezed,Object? crew = freezed,Object? ships = freezed,Object? capsules = freezed,Object? payloads = freezed,Object? launchpad = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateUtc: null == dateUtc ? _self.dateUtc : dateUtc // ignore: cast_nullable_to_non_nullable
as DateTime,flightNumber: null == flightNumber ? _self.flightNumber : flightNumber // ignore: cast_nullable_to_non_nullable
as int,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as LaunchLinks,upcoming: null == upcoming ? _self.upcoming : upcoming // ignore: cast_nullable_to_non_nullable
as bool,rocket: freezed == rocket ? _self.rocket : rocket // ignore: cast_nullable_to_non_nullable
as String?,crew: freezed == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<String>?,ships: freezed == ships ? _self.ships : ships // ignore: cast_nullable_to_non_nullable
as List<String>?,capsules: freezed == capsules ? _self.capsules : capsules // ignore: cast_nullable_to_non_nullable
as List<String>?,payloads: freezed == payloads ? _self.payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<String>?,launchpad: freezed == launchpad ? _self.launchpad : launchpad // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LaunchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LaunchLinksCopyWith<$Res> get links {
  
  return $LaunchLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [LaunchModel].
extension LaunchModelPatterns on LaunchModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LaunchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LaunchModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LaunchModel value)  $default,){
final _that = this;
switch (_that) {
case _LaunchModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LaunchModel value)?  $default,){
final _that = this;
switch (_that) {
case _LaunchModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'date_utc')  DateTime dateUtc, @JsonKey(name: 'flight_number')  int flightNumber,  bool? success,  String? details,  LaunchLinks links,  bool upcoming,  String? rocket,  List<String>? crew,  List<String>? ships,  List<String>? capsules,  List<String>? payloads,  String? launchpad,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LaunchModel() when $default != null:
return $default(_that.id,_that.name,_that.dateUtc,_that.flightNumber,_that.success,_that.details,_that.links,_that.upcoming,_that.rocket,_that.crew,_that.ships,_that.capsules,_that.payloads,_that.launchpad,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'date_utc')  DateTime dateUtc, @JsonKey(name: 'flight_number')  int flightNumber,  bool? success,  String? details,  LaunchLinks links,  bool upcoming,  String? rocket,  List<String>? crew,  List<String>? ships,  List<String>? capsules,  List<String>? payloads,  String? launchpad,  String? status)  $default,) {final _that = this;
switch (_that) {
case _LaunchModel():
return $default(_that.id,_that.name,_that.dateUtc,_that.flightNumber,_that.success,_that.details,_that.links,_that.upcoming,_that.rocket,_that.crew,_that.ships,_that.capsules,_that.payloads,_that.launchpad,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'date_utc')  DateTime dateUtc, @JsonKey(name: 'flight_number')  int flightNumber,  bool? success,  String? details,  LaunchLinks links,  bool upcoming,  String? rocket,  List<String>? crew,  List<String>? ships,  List<String>? capsules,  List<String>? payloads,  String? launchpad,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _LaunchModel() when $default != null:
return $default(_that.id,_that.name,_that.dateUtc,_that.flightNumber,_that.success,_that.details,_that.links,_that.upcoming,_that.rocket,_that.crew,_that.ships,_that.capsules,_that.payloads,_that.launchpad,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LaunchModel implements LaunchModel {
  const _LaunchModel({required this.id, required this.name, @JsonKey(name: 'date_utc') required this.dateUtc, @JsonKey(name: 'flight_number') this.flightNumber = 0, this.success, this.details, this.links = const LaunchLinks(), this.upcoming = false, this.rocket, final  List<String>? crew, final  List<String>? ships, final  List<String>? capsules, final  List<String>? payloads, this.launchpad, this.status}): _crew = crew,_ships = ships,_capsules = capsules,_payloads = payloads;
  factory _LaunchModel.fromJson(Map<String, dynamic> json) => _$LaunchModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'date_utc') final  DateTime dateUtc;
@override@JsonKey(name: 'flight_number') final  int flightNumber;
@override final  bool? success;
@override final  String? details;
@override@JsonKey() final  LaunchLinks links;
@override@JsonKey() final  bool upcoming;
@override final  String? rocket;
 final  List<String>? _crew;
@override List<String>? get crew {
  final value = _crew;
  if (value == null) return null;
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _ships;
@override List<String>? get ships {
  final value = _ships;
  if (value == null) return null;
  if (_ships is EqualUnmodifiableListView) return _ships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _capsules;
@override List<String>? get capsules {
  final value = _capsules;
  if (value == null) return null;
  if (_capsules is EqualUnmodifiableListView) return _capsules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _payloads;
@override List<String>? get payloads {
  final value = _payloads;
  if (value == null) return null;
  if (_payloads is EqualUnmodifiableListView) return _payloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? launchpad;
@override final  String? status;

/// Create a copy of LaunchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LaunchModelCopyWith<_LaunchModel> get copyWith => __$LaunchModelCopyWithImpl<_LaunchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LaunchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LaunchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateUtc, dateUtc) || other.dateUtc == dateUtc)&&(identical(other.flightNumber, flightNumber) || other.flightNumber == flightNumber)&&(identical(other.success, success) || other.success == success)&&(identical(other.details, details) || other.details == details)&&(identical(other.links, links) || other.links == links)&&(identical(other.upcoming, upcoming) || other.upcoming == upcoming)&&(identical(other.rocket, rocket) || other.rocket == rocket)&&const DeepCollectionEquality().equals(other._crew, _crew)&&const DeepCollectionEquality().equals(other._ships, _ships)&&const DeepCollectionEquality().equals(other._capsules, _capsules)&&const DeepCollectionEquality().equals(other._payloads, _payloads)&&(identical(other.launchpad, launchpad) || other.launchpad == launchpad)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,dateUtc,flightNumber,success,details,links,upcoming,rocket,const DeepCollectionEquality().hash(_crew),const DeepCollectionEquality().hash(_ships),const DeepCollectionEquality().hash(_capsules),const DeepCollectionEquality().hash(_payloads),launchpad,status);

@override
String toString() {
  return 'LaunchModel(id: $id, name: $name, dateUtc: $dateUtc, flightNumber: $flightNumber, success: $success, details: $details, links: $links, upcoming: $upcoming, rocket: $rocket, crew: $crew, ships: $ships, capsules: $capsules, payloads: $payloads, launchpad: $launchpad, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LaunchModelCopyWith<$Res> implements $LaunchModelCopyWith<$Res> {
  factory _$LaunchModelCopyWith(_LaunchModel value, $Res Function(_LaunchModel) _then) = __$LaunchModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'date_utc') DateTime dateUtc,@JsonKey(name: 'flight_number') int flightNumber, bool? success, String? details, LaunchLinks links, bool upcoming, String? rocket, List<String>? crew, List<String>? ships, List<String>? capsules, List<String>? payloads, String? launchpad, String? status
});


@override $LaunchLinksCopyWith<$Res> get links;

}
/// @nodoc
class __$LaunchModelCopyWithImpl<$Res>
    implements _$LaunchModelCopyWith<$Res> {
  __$LaunchModelCopyWithImpl(this._self, this._then);

  final _LaunchModel _self;
  final $Res Function(_LaunchModel) _then;

/// Create a copy of LaunchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? dateUtc = null,Object? flightNumber = null,Object? success = freezed,Object? details = freezed,Object? links = null,Object? upcoming = null,Object? rocket = freezed,Object? crew = freezed,Object? ships = freezed,Object? capsules = freezed,Object? payloads = freezed,Object? launchpad = freezed,Object? status = freezed,}) {
  return _then(_LaunchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateUtc: null == dateUtc ? _self.dateUtc : dateUtc // ignore: cast_nullable_to_non_nullable
as DateTime,flightNumber: null == flightNumber ? _self.flightNumber : flightNumber // ignore: cast_nullable_to_non_nullable
as int,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as LaunchLinks,upcoming: null == upcoming ? _self.upcoming : upcoming // ignore: cast_nullable_to_non_nullable
as bool,rocket: freezed == rocket ? _self.rocket : rocket // ignore: cast_nullable_to_non_nullable
as String?,crew: freezed == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<String>?,ships: freezed == ships ? _self._ships : ships // ignore: cast_nullable_to_non_nullable
as List<String>?,capsules: freezed == capsules ? _self._capsules : capsules // ignore: cast_nullable_to_non_nullable
as List<String>?,payloads: freezed == payloads ? _self._payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<String>?,launchpad: freezed == launchpad ? _self.launchpad : launchpad // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LaunchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LaunchLinksCopyWith<$Res> get links {
  
  return $LaunchLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// @nodoc
mixin _$LaunchLinks {

 PatchLinks? get patch; RedditLinks? get reddit; FlickrLinks? get flickr; String? get presskit; String? get webcast;@JsonKey(name: 'youtube_id') String? get youtubeId; String? get article; String? get wikipedia;
/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchLinksCopyWith<LaunchLinks> get copyWith => _$LaunchLinksCopyWithImpl<LaunchLinks>(this as LaunchLinks, _$identity);

  /// Serializes this LaunchLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchLinks&&(identical(other.patch, patch) || other.patch == patch)&&(identical(other.reddit, reddit) || other.reddit == reddit)&&(identical(other.flickr, flickr) || other.flickr == flickr)&&(identical(other.presskit, presskit) || other.presskit == presskit)&&(identical(other.webcast, webcast) || other.webcast == webcast)&&(identical(other.youtubeId, youtubeId) || other.youtubeId == youtubeId)&&(identical(other.article, article) || other.article == article)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,patch,reddit,flickr,presskit,webcast,youtubeId,article,wikipedia);

@override
String toString() {
  return 'LaunchLinks(patch: $patch, reddit: $reddit, flickr: $flickr, presskit: $presskit, webcast: $webcast, youtubeId: $youtubeId, article: $article, wikipedia: $wikipedia)';
}


}

/// @nodoc
abstract mixin class $LaunchLinksCopyWith<$Res>  {
  factory $LaunchLinksCopyWith(LaunchLinks value, $Res Function(LaunchLinks) _then) = _$LaunchLinksCopyWithImpl;
@useResult
$Res call({
 PatchLinks? patch, RedditLinks? reddit, FlickrLinks? flickr, String? presskit, String? webcast,@JsonKey(name: 'youtube_id') String? youtubeId, String? article, String? wikipedia
});


$PatchLinksCopyWith<$Res>? get patch;$RedditLinksCopyWith<$Res>? get reddit;$FlickrLinksCopyWith<$Res>? get flickr;

}
/// @nodoc
class _$LaunchLinksCopyWithImpl<$Res>
    implements $LaunchLinksCopyWith<$Res> {
  _$LaunchLinksCopyWithImpl(this._self, this._then);

  final LaunchLinks _self;
  final $Res Function(LaunchLinks) _then;

/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patch = freezed,Object? reddit = freezed,Object? flickr = freezed,Object? presskit = freezed,Object? webcast = freezed,Object? youtubeId = freezed,Object? article = freezed,Object? wikipedia = freezed,}) {
  return _then(_self.copyWith(
patch: freezed == patch ? _self.patch : patch // ignore: cast_nullable_to_non_nullable
as PatchLinks?,reddit: freezed == reddit ? _self.reddit : reddit // ignore: cast_nullable_to_non_nullable
as RedditLinks?,flickr: freezed == flickr ? _self.flickr : flickr // ignore: cast_nullable_to_non_nullable
as FlickrLinks?,presskit: freezed == presskit ? _self.presskit : presskit // ignore: cast_nullable_to_non_nullable
as String?,webcast: freezed == webcast ? _self.webcast : webcast // ignore: cast_nullable_to_non_nullable
as String?,youtubeId: freezed == youtubeId ? _self.youtubeId : youtubeId // ignore: cast_nullable_to_non_nullable
as String?,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as String?,wikipedia: freezed == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatchLinksCopyWith<$Res>? get patch {
    if (_self.patch == null) {
    return null;
  }

  return $PatchLinksCopyWith<$Res>(_self.patch!, (value) {
    return _then(_self.copyWith(patch: value));
  });
}/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedditLinksCopyWith<$Res>? get reddit {
    if (_self.reddit == null) {
    return null;
  }

  return $RedditLinksCopyWith<$Res>(_self.reddit!, (value) {
    return _then(_self.copyWith(reddit: value));
  });
}/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlickrLinksCopyWith<$Res>? get flickr {
    if (_self.flickr == null) {
    return null;
  }

  return $FlickrLinksCopyWith<$Res>(_self.flickr!, (value) {
    return _then(_self.copyWith(flickr: value));
  });
}
}


/// Adds pattern-matching-related methods to [LaunchLinks].
extension LaunchLinksPatterns on LaunchLinks {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LaunchLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LaunchLinks() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LaunchLinks value)  $default,){
final _that = this;
switch (_that) {
case _LaunchLinks():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LaunchLinks value)?  $default,){
final _that = this;
switch (_that) {
case _LaunchLinks() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatchLinks? patch,  RedditLinks? reddit,  FlickrLinks? flickr,  String? presskit,  String? webcast, @JsonKey(name: 'youtube_id')  String? youtubeId,  String? article,  String? wikipedia)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LaunchLinks() when $default != null:
return $default(_that.patch,_that.reddit,_that.flickr,_that.presskit,_that.webcast,_that.youtubeId,_that.article,_that.wikipedia);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatchLinks? patch,  RedditLinks? reddit,  FlickrLinks? flickr,  String? presskit,  String? webcast, @JsonKey(name: 'youtube_id')  String? youtubeId,  String? article,  String? wikipedia)  $default,) {final _that = this;
switch (_that) {
case _LaunchLinks():
return $default(_that.patch,_that.reddit,_that.flickr,_that.presskit,_that.webcast,_that.youtubeId,_that.article,_that.wikipedia);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatchLinks? patch,  RedditLinks? reddit,  FlickrLinks? flickr,  String? presskit,  String? webcast, @JsonKey(name: 'youtube_id')  String? youtubeId,  String? article,  String? wikipedia)?  $default,) {final _that = this;
switch (_that) {
case _LaunchLinks() when $default != null:
return $default(_that.patch,_that.reddit,_that.flickr,_that.presskit,_that.webcast,_that.youtubeId,_that.article,_that.wikipedia);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LaunchLinks implements LaunchLinks {
  const _LaunchLinks({this.patch, this.reddit, this.flickr, this.presskit, this.webcast, @JsonKey(name: 'youtube_id') this.youtubeId, this.article, this.wikipedia});
  factory _LaunchLinks.fromJson(Map<String, dynamic> json) => _$LaunchLinksFromJson(json);

@override final  PatchLinks? patch;
@override final  RedditLinks? reddit;
@override final  FlickrLinks? flickr;
@override final  String? presskit;
@override final  String? webcast;
@override@JsonKey(name: 'youtube_id') final  String? youtubeId;
@override final  String? article;
@override final  String? wikipedia;

/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LaunchLinksCopyWith<_LaunchLinks> get copyWith => __$LaunchLinksCopyWithImpl<_LaunchLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LaunchLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LaunchLinks&&(identical(other.patch, patch) || other.patch == patch)&&(identical(other.reddit, reddit) || other.reddit == reddit)&&(identical(other.flickr, flickr) || other.flickr == flickr)&&(identical(other.presskit, presskit) || other.presskit == presskit)&&(identical(other.webcast, webcast) || other.webcast == webcast)&&(identical(other.youtubeId, youtubeId) || other.youtubeId == youtubeId)&&(identical(other.article, article) || other.article == article)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,patch,reddit,flickr,presskit,webcast,youtubeId,article,wikipedia);

@override
String toString() {
  return 'LaunchLinks(patch: $patch, reddit: $reddit, flickr: $flickr, presskit: $presskit, webcast: $webcast, youtubeId: $youtubeId, article: $article, wikipedia: $wikipedia)';
}


}

/// @nodoc
abstract mixin class _$LaunchLinksCopyWith<$Res> implements $LaunchLinksCopyWith<$Res> {
  factory _$LaunchLinksCopyWith(_LaunchLinks value, $Res Function(_LaunchLinks) _then) = __$LaunchLinksCopyWithImpl;
@override @useResult
$Res call({
 PatchLinks? patch, RedditLinks? reddit, FlickrLinks? flickr, String? presskit, String? webcast,@JsonKey(name: 'youtube_id') String? youtubeId, String? article, String? wikipedia
});


@override $PatchLinksCopyWith<$Res>? get patch;@override $RedditLinksCopyWith<$Res>? get reddit;@override $FlickrLinksCopyWith<$Res>? get flickr;

}
/// @nodoc
class __$LaunchLinksCopyWithImpl<$Res>
    implements _$LaunchLinksCopyWith<$Res> {
  __$LaunchLinksCopyWithImpl(this._self, this._then);

  final _LaunchLinks _self;
  final $Res Function(_LaunchLinks) _then;

/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patch = freezed,Object? reddit = freezed,Object? flickr = freezed,Object? presskit = freezed,Object? webcast = freezed,Object? youtubeId = freezed,Object? article = freezed,Object? wikipedia = freezed,}) {
  return _then(_LaunchLinks(
patch: freezed == patch ? _self.patch : patch // ignore: cast_nullable_to_non_nullable
as PatchLinks?,reddit: freezed == reddit ? _self.reddit : reddit // ignore: cast_nullable_to_non_nullable
as RedditLinks?,flickr: freezed == flickr ? _self.flickr : flickr // ignore: cast_nullable_to_non_nullable
as FlickrLinks?,presskit: freezed == presskit ? _self.presskit : presskit // ignore: cast_nullable_to_non_nullable
as String?,webcast: freezed == webcast ? _self.webcast : webcast // ignore: cast_nullable_to_non_nullable
as String?,youtubeId: freezed == youtubeId ? _self.youtubeId : youtubeId // ignore: cast_nullable_to_non_nullable
as String?,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as String?,wikipedia: freezed == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatchLinksCopyWith<$Res>? get patch {
    if (_self.patch == null) {
    return null;
  }

  return $PatchLinksCopyWith<$Res>(_self.patch!, (value) {
    return _then(_self.copyWith(patch: value));
  });
}/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedditLinksCopyWith<$Res>? get reddit {
    if (_self.reddit == null) {
    return null;
  }

  return $RedditLinksCopyWith<$Res>(_self.reddit!, (value) {
    return _then(_self.copyWith(reddit: value));
  });
}/// Create a copy of LaunchLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlickrLinksCopyWith<$Res>? get flickr {
    if (_self.flickr == null) {
    return null;
  }

  return $FlickrLinksCopyWith<$Res>(_self.flickr!, (value) {
    return _then(_self.copyWith(flickr: value));
  });
}
}


/// @nodoc
mixin _$PatchLinks {

 String? get small; String? get large;
/// Create a copy of PatchLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchLinksCopyWith<PatchLinks> get copyWith => _$PatchLinksCopyWithImpl<PatchLinks>(this as PatchLinks, _$identity);

  /// Serializes this PatchLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchLinks&&(identical(other.small, small) || other.small == small)&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,large);

@override
String toString() {
  return 'PatchLinks(small: $small, large: $large)';
}


}

/// @nodoc
abstract mixin class $PatchLinksCopyWith<$Res>  {
  factory $PatchLinksCopyWith(PatchLinks value, $Res Function(PatchLinks) _then) = _$PatchLinksCopyWithImpl;
@useResult
$Res call({
 String? small, String? large
});




}
/// @nodoc
class _$PatchLinksCopyWithImpl<$Res>
    implements $PatchLinksCopyWith<$Res> {
  _$PatchLinksCopyWithImpl(this._self, this._then);

  final PatchLinks _self;
  final $Res Function(PatchLinks) _then;

/// Create a copy of PatchLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? small = freezed,Object? large = freezed,}) {
  return _then(_self.copyWith(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchLinks].
extension PatchLinksPatterns on PatchLinks {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchLinks() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchLinks value)  $default,){
final _that = this;
switch (_that) {
case _PatchLinks():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchLinks value)?  $default,){
final _that = this;
switch (_that) {
case _PatchLinks() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? small,  String? large)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchLinks() when $default != null:
return $default(_that.small,_that.large);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? small,  String? large)  $default,) {final _that = this;
switch (_that) {
case _PatchLinks():
return $default(_that.small,_that.large);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? small,  String? large)?  $default,) {final _that = this;
switch (_that) {
case _PatchLinks() when $default != null:
return $default(_that.small,_that.large);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchLinks implements PatchLinks {
  const _PatchLinks({this.small, this.large});
  factory _PatchLinks.fromJson(Map<String, dynamic> json) => _$PatchLinksFromJson(json);

@override final  String? small;
@override final  String? large;

/// Create a copy of PatchLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchLinksCopyWith<_PatchLinks> get copyWith => __$PatchLinksCopyWithImpl<_PatchLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchLinks&&(identical(other.small, small) || other.small == small)&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,large);

@override
String toString() {
  return 'PatchLinks(small: $small, large: $large)';
}


}

/// @nodoc
abstract mixin class _$PatchLinksCopyWith<$Res> implements $PatchLinksCopyWith<$Res> {
  factory _$PatchLinksCopyWith(_PatchLinks value, $Res Function(_PatchLinks) _then) = __$PatchLinksCopyWithImpl;
@override @useResult
$Res call({
 String? small, String? large
});




}
/// @nodoc
class __$PatchLinksCopyWithImpl<$Res>
    implements _$PatchLinksCopyWith<$Res> {
  __$PatchLinksCopyWithImpl(this._self, this._then);

  final _PatchLinks _self;
  final $Res Function(_PatchLinks) _then;

/// Create a copy of PatchLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? small = freezed,Object? large = freezed,}) {
  return _then(_PatchLinks(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RedditLinks {

 String? get campaign; String? get launch; String? get media; String? get recovery;
/// Create a copy of RedditLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedditLinksCopyWith<RedditLinks> get copyWith => _$RedditLinksCopyWithImpl<RedditLinks>(this as RedditLinks, _$identity);

  /// Serializes this RedditLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedditLinks&&(identical(other.campaign, campaign) || other.campaign == campaign)&&(identical(other.launch, launch) || other.launch == launch)&&(identical(other.media, media) || other.media == media)&&(identical(other.recovery, recovery) || other.recovery == recovery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaign,launch,media,recovery);

@override
String toString() {
  return 'RedditLinks(campaign: $campaign, launch: $launch, media: $media, recovery: $recovery)';
}


}

/// @nodoc
abstract mixin class $RedditLinksCopyWith<$Res>  {
  factory $RedditLinksCopyWith(RedditLinks value, $Res Function(RedditLinks) _then) = _$RedditLinksCopyWithImpl;
@useResult
$Res call({
 String? campaign, String? launch, String? media, String? recovery
});




}
/// @nodoc
class _$RedditLinksCopyWithImpl<$Res>
    implements $RedditLinksCopyWith<$Res> {
  _$RedditLinksCopyWithImpl(this._self, this._then);

  final RedditLinks _self;
  final $Res Function(RedditLinks) _then;

/// Create a copy of RedditLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaign = freezed,Object? launch = freezed,Object? media = freezed,Object? recovery = freezed,}) {
  return _then(_self.copyWith(
campaign: freezed == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as String?,launch: freezed == launch ? _self.launch : launch // ignore: cast_nullable_to_non_nullable
as String?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as String?,recovery: freezed == recovery ? _self.recovery : recovery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RedditLinks].
extension RedditLinksPatterns on RedditLinks {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedditLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedditLinks() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedditLinks value)  $default,){
final _that = this;
switch (_that) {
case _RedditLinks():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedditLinks value)?  $default,){
final _that = this;
switch (_that) {
case _RedditLinks() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? campaign,  String? launch,  String? media,  String? recovery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedditLinks() when $default != null:
return $default(_that.campaign,_that.launch,_that.media,_that.recovery);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? campaign,  String? launch,  String? media,  String? recovery)  $default,) {final _that = this;
switch (_that) {
case _RedditLinks():
return $default(_that.campaign,_that.launch,_that.media,_that.recovery);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? campaign,  String? launch,  String? media,  String? recovery)?  $default,) {final _that = this;
switch (_that) {
case _RedditLinks() when $default != null:
return $default(_that.campaign,_that.launch,_that.media,_that.recovery);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedditLinks implements RedditLinks {
  const _RedditLinks({this.campaign, this.launch, this.media, this.recovery});
  factory _RedditLinks.fromJson(Map<String, dynamic> json) => _$RedditLinksFromJson(json);

@override final  String? campaign;
@override final  String? launch;
@override final  String? media;
@override final  String? recovery;

/// Create a copy of RedditLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedditLinksCopyWith<_RedditLinks> get copyWith => __$RedditLinksCopyWithImpl<_RedditLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedditLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedditLinks&&(identical(other.campaign, campaign) || other.campaign == campaign)&&(identical(other.launch, launch) || other.launch == launch)&&(identical(other.media, media) || other.media == media)&&(identical(other.recovery, recovery) || other.recovery == recovery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaign,launch,media,recovery);

@override
String toString() {
  return 'RedditLinks(campaign: $campaign, launch: $launch, media: $media, recovery: $recovery)';
}


}

/// @nodoc
abstract mixin class _$RedditLinksCopyWith<$Res> implements $RedditLinksCopyWith<$Res> {
  factory _$RedditLinksCopyWith(_RedditLinks value, $Res Function(_RedditLinks) _then) = __$RedditLinksCopyWithImpl;
@override @useResult
$Res call({
 String? campaign, String? launch, String? media, String? recovery
});




}
/// @nodoc
class __$RedditLinksCopyWithImpl<$Res>
    implements _$RedditLinksCopyWith<$Res> {
  __$RedditLinksCopyWithImpl(this._self, this._then);

  final _RedditLinks _self;
  final $Res Function(_RedditLinks) _then;

/// Create a copy of RedditLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaign = freezed,Object? launch = freezed,Object? media = freezed,Object? recovery = freezed,}) {
  return _then(_RedditLinks(
campaign: freezed == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as String?,launch: freezed == launch ? _self.launch : launch // ignore: cast_nullable_to_non_nullable
as String?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as String?,recovery: freezed == recovery ? _self.recovery : recovery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FlickrLinks {

 List<String>? get small; List<String>? get original;
/// Create a copy of FlickrLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlickrLinksCopyWith<FlickrLinks> get copyWith => _$FlickrLinksCopyWithImpl<FlickrLinks>(this as FlickrLinks, _$identity);

  /// Serializes this FlickrLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlickrLinks&&const DeepCollectionEquality().equals(other.small, small)&&const DeepCollectionEquality().equals(other.original, original));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(small),const DeepCollectionEquality().hash(original));

@override
String toString() {
  return 'FlickrLinks(small: $small, original: $original)';
}


}

/// @nodoc
abstract mixin class $FlickrLinksCopyWith<$Res>  {
  factory $FlickrLinksCopyWith(FlickrLinks value, $Res Function(FlickrLinks) _then) = _$FlickrLinksCopyWithImpl;
@useResult
$Res call({
 List<String>? small, List<String>? original
});




}
/// @nodoc
class _$FlickrLinksCopyWithImpl<$Res>
    implements $FlickrLinksCopyWith<$Res> {
  _$FlickrLinksCopyWithImpl(this._self, this._then);

  final FlickrLinks _self;
  final $Res Function(FlickrLinks) _then;

/// Create a copy of FlickrLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? small = freezed,Object? original = freezed,}) {
  return _then(_self.copyWith(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as List<String>?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlickrLinks].
extension FlickrLinksPatterns on FlickrLinks {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlickrLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlickrLinks() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlickrLinks value)  $default,){
final _that = this;
switch (_that) {
case _FlickrLinks():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlickrLinks value)?  $default,){
final _that = this;
switch (_that) {
case _FlickrLinks() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? small,  List<String>? original)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlickrLinks() when $default != null:
return $default(_that.small,_that.original);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? small,  List<String>? original)  $default,) {final _that = this;
switch (_that) {
case _FlickrLinks():
return $default(_that.small,_that.original);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? small,  List<String>? original)?  $default,) {final _that = this;
switch (_that) {
case _FlickrLinks() when $default != null:
return $default(_that.small,_that.original);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlickrLinks implements FlickrLinks {
  const _FlickrLinks({final  List<String>? small, final  List<String>? original}): _small = small,_original = original;
  factory _FlickrLinks.fromJson(Map<String, dynamic> json) => _$FlickrLinksFromJson(json);

 final  List<String>? _small;
@override List<String>? get small {
  final value = _small;
  if (value == null) return null;
  if (_small is EqualUnmodifiableListView) return _small;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _original;
@override List<String>? get original {
  final value = _original;
  if (value == null) return null;
  if (_original is EqualUnmodifiableListView) return _original;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FlickrLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlickrLinksCopyWith<_FlickrLinks> get copyWith => __$FlickrLinksCopyWithImpl<_FlickrLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlickrLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlickrLinks&&const DeepCollectionEquality().equals(other._small, _small)&&const DeepCollectionEquality().equals(other._original, _original));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_small),const DeepCollectionEquality().hash(_original));

@override
String toString() {
  return 'FlickrLinks(small: $small, original: $original)';
}


}

/// @nodoc
abstract mixin class _$FlickrLinksCopyWith<$Res> implements $FlickrLinksCopyWith<$Res> {
  factory _$FlickrLinksCopyWith(_FlickrLinks value, $Res Function(_FlickrLinks) _then) = __$FlickrLinksCopyWithImpl;
@override @useResult
$Res call({
 List<String>? small, List<String>? original
});




}
/// @nodoc
class __$FlickrLinksCopyWithImpl<$Res>
    implements _$FlickrLinksCopyWith<$Res> {
  __$FlickrLinksCopyWithImpl(this._self, this._then);

  final _FlickrLinks _self;
  final $Res Function(_FlickrLinks) _then;

/// Create a copy of FlickrLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? small = freezed,Object? original = freezed,}) {
  return _then(_FlickrLinks(
small: freezed == small ? _self._small : small // ignore: cast_nullable_to_non_nullable
as List<String>?,original: freezed == original ? _self._original : original // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
