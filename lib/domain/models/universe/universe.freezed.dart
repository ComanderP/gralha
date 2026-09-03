// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'universe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Universe {

@override UniverseId get id;@override String get name;@override String? get description;@override DateTime get createdAt;@override DateTime get updatedAt;
/// Create a copy of Universe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UniverseCopyWith<Universe> get copyWith => _$UniverseCopyWithImpl<Universe>(this as Universe, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Universe&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,updatedAt);

@override
String toString() {
  return 'Universe(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UniverseCopyWith<$Res>  {
  factory $UniverseCopyWith(Universe value, $Res Function(Universe) _then) = _$UniverseCopyWithImpl;
@useResult
$Res call({
@override UniverseId id,@override String name,@override String? description,@override DateTime createdAt,@override DateTime updatedAt
});




}
/// @nodoc
class _$UniverseCopyWithImpl<$Res>
    implements $UniverseCopyWith<$Res> {
  _$UniverseCopyWithImpl(this._self, this._then);

  final Universe _self;
  final $Res Function(Universe) _then;

/// Create a copy of Universe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(Universe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UniverseId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}



/// @nodoc


class _Universe extends Universe {
  const _Universe({@override required this.id, @override required this.name, @override this.description, @override required this.createdAt, @override required this.updatedAt}): super(id: id, name: name, description: description, createdAt: createdAt, updatedAt: updatedAt);
  

@override@override final  UniverseId id;
@override@override final  String name;
@override@override final  String? description;
@override@override final  DateTime createdAt;
@override@override final  DateTime updatedAt;

/// Create a copy of Universe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UniverseCopyWith<_Universe> get copyWith => __$UniverseCopyWithImpl<_Universe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Universe&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,updatedAt);

@override
String toString() {
  return 'Universe(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UniverseCopyWith<$Res> implements $UniverseCopyWith<$Res> {
  factory _$UniverseCopyWith(_Universe value, $Res Function(_Universe) _then) = __$UniverseCopyWithImpl;
@override @useResult
$Res call({
@override UniverseId id,@override String name,@override String? description,@override DateTime createdAt,@override DateTime updatedAt
});




}
/// @nodoc
class __$UniverseCopyWithImpl<$Res>
    implements _$UniverseCopyWith<$Res> {
  __$UniverseCopyWithImpl(this._self, this._then);

  final _Universe _self;
  final $Res Function(_Universe) _then;

/// Create a copy of Universe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Universe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UniverseId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
