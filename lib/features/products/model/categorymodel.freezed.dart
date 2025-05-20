// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorymodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Categorymodel {

 int get id; String get name;
/// Create a copy of Categorymodel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategorymodelCopyWith<Categorymodel> get copyWith => _$CategorymodelCopyWithImpl<Categorymodel>(this as Categorymodel, _$identity);

  /// Serializes this Categorymodel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Categorymodel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Categorymodel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategorymodelCopyWith<$Res>  {
  factory $CategorymodelCopyWith(Categorymodel value, $Res Function(Categorymodel) _then) = _$CategorymodelCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$CategorymodelCopyWithImpl<$Res>
    implements $CategorymodelCopyWith<$Res> {
  _$CategorymodelCopyWithImpl(this._self, this._then);

  final Categorymodel _self;
  final $Res Function(Categorymodel) _then;

/// Create a copy of Categorymodel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Categorymodel implements Categorymodel {
   _Categorymodel({required this.id, required this.name});
  factory _Categorymodel.fromJson(Map<String, dynamic> json) => _$CategorymodelFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of Categorymodel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorymodelCopyWith<_Categorymodel> get copyWith => __$CategorymodelCopyWithImpl<_Categorymodel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategorymodelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Categorymodel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Categorymodel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategorymodelCopyWith<$Res> implements $CategorymodelCopyWith<$Res> {
  factory _$CategorymodelCopyWith(_Categorymodel value, $Res Function(_Categorymodel) _then) = __$CategorymodelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$CategorymodelCopyWithImpl<$Res>
    implements _$CategorymodelCopyWith<$Res> {
  __$CategorymodelCopyWithImpl(this._self, this._then);

  final _Categorymodel _self;
  final $Res Function(_Categorymodel) _then;

/// Create a copy of Categorymodel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Categorymodel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
