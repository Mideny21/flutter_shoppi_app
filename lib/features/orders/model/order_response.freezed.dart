// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderReponse {

 int get id; int get totalPrice; DateTime get createdAt;
/// Create a copy of OrderReponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderReponseCopyWith<OrderReponse> get copyWith => _$OrderReponseCopyWithImpl<OrderReponse>(this as OrderReponse, _$identity);

  /// Serializes this OrderReponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderReponse&&(identical(other.id, id) || other.id == id)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalPrice,createdAt);

@override
String toString() {
  return 'OrderReponse(id: $id, totalPrice: $totalPrice, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderReponseCopyWith<$Res>  {
  factory $OrderReponseCopyWith(OrderReponse value, $Res Function(OrderReponse) _then) = _$OrderReponseCopyWithImpl;
@useResult
$Res call({
 int id, int totalPrice, DateTime createdAt
});




}
/// @nodoc
class _$OrderReponseCopyWithImpl<$Res>
    implements $OrderReponseCopyWith<$Res> {
  _$OrderReponseCopyWithImpl(this._self, this._then);

  final OrderReponse _self;
  final $Res Function(OrderReponse) _then;

/// Create a copy of OrderReponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? totalPrice = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrderReponse implements OrderReponse {
   _OrderReponse({required this.id, required this.totalPrice, required this.createdAt});
  factory _OrderReponse.fromJson(Map<String, dynamic> json) => _$OrderReponseFromJson(json);

@override final  int id;
@override final  int totalPrice;
@override final  DateTime createdAt;

/// Create a copy of OrderReponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderReponseCopyWith<_OrderReponse> get copyWith => __$OrderReponseCopyWithImpl<_OrderReponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderReponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderReponse&&(identical(other.id, id) || other.id == id)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalPrice,createdAt);

@override
String toString() {
  return 'OrderReponse(id: $id, totalPrice: $totalPrice, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderReponseCopyWith<$Res> implements $OrderReponseCopyWith<$Res> {
  factory _$OrderReponseCopyWith(_OrderReponse value, $Res Function(_OrderReponse) _then) = __$OrderReponseCopyWithImpl;
@override @useResult
$Res call({
 int id, int totalPrice, DateTime createdAt
});




}
/// @nodoc
class __$OrderReponseCopyWithImpl<$Res>
    implements _$OrderReponseCopyWith<$Res> {
  __$OrderReponseCopyWithImpl(this._self, this._then);

  final _OrderReponse _self;
  final $Res Function(_OrderReponse) _then;

/// Create a copy of OrderReponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? totalPrice = null,Object? createdAt = null,}) {
  return _then(_OrderReponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
