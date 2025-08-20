// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shippingaddressmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shippingaddressmodel {

 int get id; String get city; String get street; String get zipcode;
/// Create a copy of Shippingaddressmodel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingaddressmodelCopyWith<Shippingaddressmodel> get copyWith => _$ShippingaddressmodelCopyWithImpl<Shippingaddressmodel>(this as Shippingaddressmodel, _$identity);

  /// Serializes this Shippingaddressmodel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shippingaddressmodel&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,street,zipcode);

@override
String toString() {
  return 'Shippingaddressmodel(id: $id, city: $city, street: $street, zipcode: $zipcode)';
}


}

/// @nodoc
abstract mixin class $ShippingaddressmodelCopyWith<$Res>  {
  factory $ShippingaddressmodelCopyWith(Shippingaddressmodel value, $Res Function(Shippingaddressmodel) _then) = _$ShippingaddressmodelCopyWithImpl;
@useResult
$Res call({
 int id, String city, String street, String zipcode
});




}
/// @nodoc
class _$ShippingaddressmodelCopyWithImpl<$Res>
    implements $ShippingaddressmodelCopyWith<$Res> {
  _$ShippingaddressmodelCopyWithImpl(this._self, this._then);

  final Shippingaddressmodel _self;
  final $Res Function(Shippingaddressmodel) _then;

/// Create a copy of Shippingaddressmodel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? city = null,Object? street = null,Object? zipcode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,zipcode: null == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Shippingaddressmodel].
extension ShippingaddressmodelPatterns on Shippingaddressmodel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shippingaddressmodel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shippingaddressmodel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shippingaddressmodel value)  $default,){
final _that = this;
switch (_that) {
case _Shippingaddressmodel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shippingaddressmodel value)?  $default,){
final _that = this;
switch (_that) {
case _Shippingaddressmodel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String city,  String street,  String zipcode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shippingaddressmodel() when $default != null:
return $default(_that.id,_that.city,_that.street,_that.zipcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String city,  String street,  String zipcode)  $default,) {final _that = this;
switch (_that) {
case _Shippingaddressmodel():
return $default(_that.id,_that.city,_that.street,_that.zipcode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String city,  String street,  String zipcode)?  $default,) {final _that = this;
switch (_that) {
case _Shippingaddressmodel() when $default != null:
return $default(_that.id,_that.city,_that.street,_that.zipcode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Shippingaddressmodel implements Shippingaddressmodel {
   _Shippingaddressmodel({required this.id, required this.city, required this.street, required this.zipcode});
  factory _Shippingaddressmodel.fromJson(Map<String, dynamic> json) => _$ShippingaddressmodelFromJson(json);

@override final  int id;
@override final  String city;
@override final  String street;
@override final  String zipcode;

/// Create a copy of Shippingaddressmodel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingaddressmodelCopyWith<_Shippingaddressmodel> get copyWith => __$ShippingaddressmodelCopyWithImpl<_Shippingaddressmodel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingaddressmodelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shippingaddressmodel&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,street,zipcode);

@override
String toString() {
  return 'Shippingaddressmodel(id: $id, city: $city, street: $street, zipcode: $zipcode)';
}


}

/// @nodoc
abstract mixin class _$ShippingaddressmodelCopyWith<$Res> implements $ShippingaddressmodelCopyWith<$Res> {
  factory _$ShippingaddressmodelCopyWith(_Shippingaddressmodel value, $Res Function(_Shippingaddressmodel) _then) = __$ShippingaddressmodelCopyWithImpl;
@override @useResult
$Res call({
 int id, String city, String street, String zipcode
});




}
/// @nodoc
class __$ShippingaddressmodelCopyWithImpl<$Res>
    implements _$ShippingaddressmodelCopyWith<$Res> {
  __$ShippingaddressmodelCopyWithImpl(this._self, this._then);

  final _Shippingaddressmodel _self;
  final $Res Function(_Shippingaddressmodel) _then;

/// Create a copy of Shippingaddressmodel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? city = null,Object? street = null,Object? zipcode = null,}) {
  return _then(_Shippingaddressmodel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,zipcode: null == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
