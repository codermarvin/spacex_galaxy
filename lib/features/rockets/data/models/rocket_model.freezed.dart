// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rocket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RocketModel {

 String get id; String get name; String get type; bool get active; int get stages; int get boosters;@JsonKey(name: 'cost_per_launch') int get costPerLaunch;@JsonKey(name: 'success_rate_pct') num get successRatePct;@JsonKey(name: 'first_flight') String get firstFlight; String get country; String get company; String get description; String get wikipedia;@JsonKey(name: 'flickr_images') List<String> get flickrImages; String? get family; bool? get reusable;@JsonKey(name: 'launch_count') int? get launchCount;@JsonKey(name: 'failed_launches') int? get failedLaunches;@JsonKey(name: 'successful_launches') int? get successfulLaunches;
/// Create a copy of RocketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RocketModelCopyWith<RocketModel> get copyWith => _$RocketModelCopyWithImpl<RocketModel>(this as RocketModel, _$identity);

  /// Serializes this RocketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.active, active) || other.active == active)&&(identical(other.stages, stages) || other.stages == stages)&&(identical(other.boosters, boosters) || other.boosters == boosters)&&(identical(other.costPerLaunch, costPerLaunch) || other.costPerLaunch == costPerLaunch)&&(identical(other.successRatePct, successRatePct) || other.successRatePct == successRatePct)&&(identical(other.firstFlight, firstFlight) || other.firstFlight == firstFlight)&&(identical(other.country, country) || other.country == country)&&(identical(other.company, company) || other.company == company)&&(identical(other.description, description) || other.description == description)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia)&&const DeepCollectionEquality().equals(other.flickrImages, flickrImages)&&(identical(other.family, family) || other.family == family)&&(identical(other.reusable, reusable) || other.reusable == reusable)&&(identical(other.launchCount, launchCount) || other.launchCount == launchCount)&&(identical(other.failedLaunches, failedLaunches) || other.failedLaunches == failedLaunches)&&(identical(other.successfulLaunches, successfulLaunches) || other.successfulLaunches == successfulLaunches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,active,stages,boosters,costPerLaunch,successRatePct,firstFlight,country,company,description,wikipedia,const DeepCollectionEquality().hash(flickrImages),family,reusable,launchCount,failedLaunches,successfulLaunches]);

@override
String toString() {
  return 'RocketModel(id: $id, name: $name, type: $type, active: $active, stages: $stages, boosters: $boosters, costPerLaunch: $costPerLaunch, successRatePct: $successRatePct, firstFlight: $firstFlight, country: $country, company: $company, description: $description, wikipedia: $wikipedia, flickrImages: $flickrImages, family: $family, reusable: $reusable, launchCount: $launchCount, failedLaunches: $failedLaunches, successfulLaunches: $successfulLaunches)';
}


}

/// @nodoc
abstract mixin class $RocketModelCopyWith<$Res>  {
  factory $RocketModelCopyWith(RocketModel value, $Res Function(RocketModel) _then) = _$RocketModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, bool active, int stages, int boosters,@JsonKey(name: 'cost_per_launch') int costPerLaunch,@JsonKey(name: 'success_rate_pct') num successRatePct,@JsonKey(name: 'first_flight') String firstFlight, String country, String company, String description, String wikipedia,@JsonKey(name: 'flickr_images') List<String> flickrImages, String? family, bool? reusable,@JsonKey(name: 'launch_count') int? launchCount,@JsonKey(name: 'failed_launches') int? failedLaunches,@JsonKey(name: 'successful_launches') int? successfulLaunches
});




}
/// @nodoc
class _$RocketModelCopyWithImpl<$Res>
    implements $RocketModelCopyWith<$Res> {
  _$RocketModelCopyWithImpl(this._self, this._then);

  final RocketModel _self;
  final $Res Function(RocketModel) _then;

/// Create a copy of RocketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? active = null,Object? stages = null,Object? boosters = null,Object? costPerLaunch = null,Object? successRatePct = null,Object? firstFlight = null,Object? country = null,Object? company = null,Object? description = null,Object? wikipedia = null,Object? flickrImages = null,Object? family = freezed,Object? reusable = freezed,Object? launchCount = freezed,Object? failedLaunches = freezed,Object? successfulLaunches = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,stages: null == stages ? _self.stages : stages // ignore: cast_nullable_to_non_nullable
as int,boosters: null == boosters ? _self.boosters : boosters // ignore: cast_nullable_to_non_nullable
as int,costPerLaunch: null == costPerLaunch ? _self.costPerLaunch : costPerLaunch // ignore: cast_nullable_to_non_nullable
as int,successRatePct: null == successRatePct ? _self.successRatePct : successRatePct // ignore: cast_nullable_to_non_nullable
as num,firstFlight: null == firstFlight ? _self.firstFlight : firstFlight // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,wikipedia: null == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String,flickrImages: null == flickrImages ? _self.flickrImages : flickrImages // ignore: cast_nullable_to_non_nullable
as List<String>,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String?,reusable: freezed == reusable ? _self.reusable : reusable // ignore: cast_nullable_to_non_nullable
as bool?,launchCount: freezed == launchCount ? _self.launchCount : launchCount // ignore: cast_nullable_to_non_nullable
as int?,failedLaunches: freezed == failedLaunches ? _self.failedLaunches : failedLaunches // ignore: cast_nullable_to_non_nullable
as int?,successfulLaunches: freezed == successfulLaunches ? _self.successfulLaunches : successfulLaunches // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RocketModel].
extension RocketModelPatterns on RocketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RocketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RocketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RocketModel value)  $default,){
final _that = this;
switch (_that) {
case _RocketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RocketModel value)?  $default,){
final _that = this;
switch (_that) {
case _RocketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  bool active,  int stages,  int boosters, @JsonKey(name: 'cost_per_launch')  int costPerLaunch, @JsonKey(name: 'success_rate_pct')  num successRatePct, @JsonKey(name: 'first_flight')  String firstFlight,  String country,  String company,  String description,  String wikipedia, @JsonKey(name: 'flickr_images')  List<String> flickrImages,  String? family,  bool? reusable, @JsonKey(name: 'launch_count')  int? launchCount, @JsonKey(name: 'failed_launches')  int? failedLaunches, @JsonKey(name: 'successful_launches')  int? successfulLaunches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RocketModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.active,_that.stages,_that.boosters,_that.costPerLaunch,_that.successRatePct,_that.firstFlight,_that.country,_that.company,_that.description,_that.wikipedia,_that.flickrImages,_that.family,_that.reusable,_that.launchCount,_that.failedLaunches,_that.successfulLaunches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  bool active,  int stages,  int boosters, @JsonKey(name: 'cost_per_launch')  int costPerLaunch, @JsonKey(name: 'success_rate_pct')  num successRatePct, @JsonKey(name: 'first_flight')  String firstFlight,  String country,  String company,  String description,  String wikipedia, @JsonKey(name: 'flickr_images')  List<String> flickrImages,  String? family,  bool? reusable, @JsonKey(name: 'launch_count')  int? launchCount, @JsonKey(name: 'failed_launches')  int? failedLaunches, @JsonKey(name: 'successful_launches')  int? successfulLaunches)  $default,) {final _that = this;
switch (_that) {
case _RocketModel():
return $default(_that.id,_that.name,_that.type,_that.active,_that.stages,_that.boosters,_that.costPerLaunch,_that.successRatePct,_that.firstFlight,_that.country,_that.company,_that.description,_that.wikipedia,_that.flickrImages,_that.family,_that.reusable,_that.launchCount,_that.failedLaunches,_that.successfulLaunches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  bool active,  int stages,  int boosters, @JsonKey(name: 'cost_per_launch')  int costPerLaunch, @JsonKey(name: 'success_rate_pct')  num successRatePct, @JsonKey(name: 'first_flight')  String firstFlight,  String country,  String company,  String description,  String wikipedia, @JsonKey(name: 'flickr_images')  List<String> flickrImages,  String? family,  bool? reusable, @JsonKey(name: 'launch_count')  int? launchCount, @JsonKey(name: 'failed_launches')  int? failedLaunches, @JsonKey(name: 'successful_launches')  int? successfulLaunches)?  $default,) {final _that = this;
switch (_that) {
case _RocketModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.active,_that.stages,_that.boosters,_that.costPerLaunch,_that.successRatePct,_that.firstFlight,_that.country,_that.company,_that.description,_that.wikipedia,_that.flickrImages,_that.family,_that.reusable,_that.launchCount,_that.failedLaunches,_that.successfulLaunches);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RocketModel implements RocketModel {
  const _RocketModel({required this.id, required this.name, this.type = 'rocket', this.active = true, this.stages = 2, this.boosters = 0, @JsonKey(name: 'cost_per_launch') this.costPerLaunch = 0, @JsonKey(name: 'success_rate_pct') this.successRatePct = 0, @JsonKey(name: 'first_flight') this.firstFlight = 'N/A', this.country = 'United States', this.company = 'SpaceX', this.description = '', this.wikipedia = '', @JsonKey(name: 'flickr_images') final  List<String> flickrImages = const [], this.family, this.reusable, @JsonKey(name: 'launch_count') this.launchCount, @JsonKey(name: 'failed_launches') this.failedLaunches, @JsonKey(name: 'successful_launches') this.successfulLaunches}): _flickrImages = flickrImages;
  factory _RocketModel.fromJson(Map<String, dynamic> json) => _$RocketModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String type;
@override@JsonKey() final  bool active;
@override@JsonKey() final  int stages;
@override@JsonKey() final  int boosters;
@override@JsonKey(name: 'cost_per_launch') final  int costPerLaunch;
@override@JsonKey(name: 'success_rate_pct') final  num successRatePct;
@override@JsonKey(name: 'first_flight') final  String firstFlight;
@override@JsonKey() final  String country;
@override@JsonKey() final  String company;
@override@JsonKey() final  String description;
@override@JsonKey() final  String wikipedia;
 final  List<String> _flickrImages;
@override@JsonKey(name: 'flickr_images') List<String> get flickrImages {
  if (_flickrImages is EqualUnmodifiableListView) return _flickrImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flickrImages);
}

@override final  String? family;
@override final  bool? reusable;
@override@JsonKey(name: 'launch_count') final  int? launchCount;
@override@JsonKey(name: 'failed_launches') final  int? failedLaunches;
@override@JsonKey(name: 'successful_launches') final  int? successfulLaunches;

/// Create a copy of RocketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RocketModelCopyWith<_RocketModel> get copyWith => __$RocketModelCopyWithImpl<_RocketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RocketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RocketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.active, active) || other.active == active)&&(identical(other.stages, stages) || other.stages == stages)&&(identical(other.boosters, boosters) || other.boosters == boosters)&&(identical(other.costPerLaunch, costPerLaunch) || other.costPerLaunch == costPerLaunch)&&(identical(other.successRatePct, successRatePct) || other.successRatePct == successRatePct)&&(identical(other.firstFlight, firstFlight) || other.firstFlight == firstFlight)&&(identical(other.country, country) || other.country == country)&&(identical(other.company, company) || other.company == company)&&(identical(other.description, description) || other.description == description)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia)&&const DeepCollectionEquality().equals(other._flickrImages, _flickrImages)&&(identical(other.family, family) || other.family == family)&&(identical(other.reusable, reusable) || other.reusable == reusable)&&(identical(other.launchCount, launchCount) || other.launchCount == launchCount)&&(identical(other.failedLaunches, failedLaunches) || other.failedLaunches == failedLaunches)&&(identical(other.successfulLaunches, successfulLaunches) || other.successfulLaunches == successfulLaunches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,active,stages,boosters,costPerLaunch,successRatePct,firstFlight,country,company,description,wikipedia,const DeepCollectionEquality().hash(_flickrImages),family,reusable,launchCount,failedLaunches,successfulLaunches]);

@override
String toString() {
  return 'RocketModel(id: $id, name: $name, type: $type, active: $active, stages: $stages, boosters: $boosters, costPerLaunch: $costPerLaunch, successRatePct: $successRatePct, firstFlight: $firstFlight, country: $country, company: $company, description: $description, wikipedia: $wikipedia, flickrImages: $flickrImages, family: $family, reusable: $reusable, launchCount: $launchCount, failedLaunches: $failedLaunches, successfulLaunches: $successfulLaunches)';
}


}

/// @nodoc
abstract mixin class _$RocketModelCopyWith<$Res> implements $RocketModelCopyWith<$Res> {
  factory _$RocketModelCopyWith(_RocketModel value, $Res Function(_RocketModel) _then) = __$RocketModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, bool active, int stages, int boosters,@JsonKey(name: 'cost_per_launch') int costPerLaunch,@JsonKey(name: 'success_rate_pct') num successRatePct,@JsonKey(name: 'first_flight') String firstFlight, String country, String company, String description, String wikipedia,@JsonKey(name: 'flickr_images') List<String> flickrImages, String? family, bool? reusable,@JsonKey(name: 'launch_count') int? launchCount,@JsonKey(name: 'failed_launches') int? failedLaunches,@JsonKey(name: 'successful_launches') int? successfulLaunches
});




}
/// @nodoc
class __$RocketModelCopyWithImpl<$Res>
    implements _$RocketModelCopyWith<$Res> {
  __$RocketModelCopyWithImpl(this._self, this._then);

  final _RocketModel _self;
  final $Res Function(_RocketModel) _then;

/// Create a copy of RocketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? active = null,Object? stages = null,Object? boosters = null,Object? costPerLaunch = null,Object? successRatePct = null,Object? firstFlight = null,Object? country = null,Object? company = null,Object? description = null,Object? wikipedia = null,Object? flickrImages = null,Object? family = freezed,Object? reusable = freezed,Object? launchCount = freezed,Object? failedLaunches = freezed,Object? successfulLaunches = freezed,}) {
  return _then(_RocketModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,stages: null == stages ? _self.stages : stages // ignore: cast_nullable_to_non_nullable
as int,boosters: null == boosters ? _self.boosters : boosters // ignore: cast_nullable_to_non_nullable
as int,costPerLaunch: null == costPerLaunch ? _self.costPerLaunch : costPerLaunch // ignore: cast_nullable_to_non_nullable
as int,successRatePct: null == successRatePct ? _self.successRatePct : successRatePct // ignore: cast_nullable_to_non_nullable
as num,firstFlight: null == firstFlight ? _self.firstFlight : firstFlight // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,wikipedia: null == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String,flickrImages: null == flickrImages ? _self._flickrImages : flickrImages // ignore: cast_nullable_to_non_nullable
as List<String>,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String?,reusable: freezed == reusable ? _self.reusable : reusable // ignore: cast_nullable_to_non_nullable
as bool?,launchCount: freezed == launchCount ? _self.launchCount : launchCount // ignore: cast_nullable_to_non_nullable
as int?,failedLaunches: freezed == failedLaunches ? _self.failedLaunches : failedLaunches // ignore: cast_nullable_to_non_nullable
as int?,successfulLaunches: freezed == successfulLaunches ? _self.successfulLaunches : successfulLaunches // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
