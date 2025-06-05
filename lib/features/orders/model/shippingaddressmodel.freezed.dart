// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shippingaddressmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingAddressModel {

 int get id; String get city; String get street; String get zipcode;
/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingAddressModelCopyWith<ShippingAddressModel> get copyWith => _$ShippingAddressModelCopyWithImpl<ShippingAddressModel>(this as ShippingAddressModel, _$identity);

  /// Serializes this ShippingAddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,street,zipcode);

@override
String toString() {
  return 'ShippingAddressModel(id: $id, city: $city, street: $street, zipcode: $zipcode)';
}


}

/// @nodoc
abstract mixin class $ShippingAddressModelCopyWith<$Res>  {
  factory $ShippingAddressModelCopyWith(ShippingAddressModel value, $Res Function(ShippingAddressModel) _then) = _$ShippingAddressModelCopyWithImpl;
@useResult
$Res call({
 int id, String city, String street, String zipcode
});




}
/// @nodoc
class _$ShippingAddressModelCopyWithImpl<$Res>
    implements $ShippingAddressModelCopyWith<$Res> {
  _$ShippingAddressModelCopyWithImpl(this._self, this._then);

  final ShippingAddressModel _self;
  final $Res Function(ShippingAddressModel) _then;

/// Create a copy of ShippingAddressModel
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


/// @nodoc
@JsonSerializable()

class _ShippingAddressModel implements ShippingAddressModel {
   _ShippingAddressModel({required this.id, required this.city, required this.street, required this.zipcode});
  factory _ShippingAddressModel.fromJson(Map<String, dynamic> json) => _$ShippingAddressModelFromJson(json);

@override final  int id;
@override final  String city;
@override final  String street;
@override final  String zipcode;

/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingAddressModelCopyWith<_ShippingAddressModel> get copyWith => __$ShippingAddressModelCopyWithImpl<_ShippingAddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingAddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,street,zipcode);

@override
String toString() {
  return 'ShippingAddressModel(id: $id, city: $city, street: $street, zipcode: $zipcode)';
}


}

/// @nodoc
abstract mixin class _$ShippingAddressModelCopyWith<$Res> implements $ShippingAddressModelCopyWith<$Res> {
  factory _$ShippingAddressModelCopyWith(_ShippingAddressModel value, $Res Function(_ShippingAddressModel) _then) = __$ShippingAddressModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String city, String street, String zipcode
});




}
/// @nodoc
class __$ShippingAddressModelCopyWithImpl<$Res>
    implements _$ShippingAddressModelCopyWith<$Res> {
  __$ShippingAddressModelCopyWithImpl(this._self, this._then);

  final _ShippingAddressModel _self;
  final $Res Function(_ShippingAddressModel) _then;

/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? city = null,Object? street = null,Object? zipcode = null,}) {
  return _then(_ShippingAddressModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,zipcode: null == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
