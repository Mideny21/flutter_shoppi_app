// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderEvent()';
}


}

/// @nodoc
class $OrderEventCopyWith<$Res>  {
$OrderEventCopyWith(OrderEvent _, $Res Function(OrderEvent) __);
}


/// @nodoc


class _FetchUserAddress implements OrderEvent {
  const _FetchUserAddress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchUserAddress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderEvent.fetchUserAddress()';
}


}




/// @nodoc


class _CreateShippingAddress implements OrderEvent {
  const _CreateShippingAddress(this.param);
  

 final  ShippingAddressParam param;

/// Create a copy of OrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateShippingAddressCopyWith<_CreateShippingAddress> get copyWith => __$CreateShippingAddressCopyWithImpl<_CreateShippingAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateShippingAddress&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'OrderEvent.createShippingAddress(param: $param)';
}


}

/// @nodoc
abstract mixin class _$CreateShippingAddressCopyWith<$Res> implements $OrderEventCopyWith<$Res> {
  factory _$CreateShippingAddressCopyWith(_CreateShippingAddress value, $Res Function(_CreateShippingAddress) _then) = __$CreateShippingAddressCopyWithImpl;
@useResult
$Res call({
 ShippingAddressParam param
});




}
/// @nodoc
class __$CreateShippingAddressCopyWithImpl<$Res>
    implements _$CreateShippingAddressCopyWith<$Res> {
  __$CreateShippingAddressCopyWithImpl(this._self, this._then);

  final _CreateShippingAddress _self;
  final $Res Function(_CreateShippingAddress) _then;

/// Create a copy of OrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_CreateShippingAddress(
null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as ShippingAddressParam,
  ));
}


}

/// @nodoc


class _SelectShipppingAddress implements OrderEvent {
  const _SelectShipppingAddress(this.id);
  

 final  int id;

/// Create a copy of OrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectShipppingAddressCopyWith<_SelectShipppingAddress> get copyWith => __$SelectShipppingAddressCopyWithImpl<_SelectShipppingAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectShipppingAddress&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'OrderEvent.selectShippingAddressId(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SelectShipppingAddressCopyWith<$Res> implements $OrderEventCopyWith<$Res> {
  factory _$SelectShipppingAddressCopyWith(_SelectShipppingAddress value, $Res Function(_SelectShipppingAddress) _then) = __$SelectShipppingAddressCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$SelectShipppingAddressCopyWithImpl<$Res>
    implements _$SelectShipppingAddressCopyWith<$Res> {
  __$SelectShipppingAddressCopyWithImpl(this._self, this._then);

  final _SelectShipppingAddress _self;
  final $Res Function(_SelectShipppingAddress) _then;

/// Create a copy of OrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_SelectShipppingAddress(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CreateOrder implements OrderEvent {
  const _CreateOrder(this.param);
  

 final  OrderParams param;

/// Create a copy of OrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderCopyWith<_CreateOrder> get copyWith => __$CreateOrderCopyWithImpl<_CreateOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrder&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'OrderEvent.createOrder(param: $param)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderCopyWith<$Res> implements $OrderEventCopyWith<$Res> {
  factory _$CreateOrderCopyWith(_CreateOrder value, $Res Function(_CreateOrder) _then) = __$CreateOrderCopyWithImpl;
@useResult
$Res call({
 OrderParams param
});




}
/// @nodoc
class __$CreateOrderCopyWithImpl<$Res>
    implements _$CreateOrderCopyWith<$Res> {
  __$CreateOrderCopyWithImpl(this._self, this._then);

  final _CreateOrder _self;
  final $Res Function(_CreateOrder) _then;

/// Create a copy of OrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_CreateOrder(
null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as OrderParams,
  ));
}


}

/// @nodoc


class _FetchOrders implements OrderEvent {
  const _FetchOrders();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchOrders);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderEvent.fetchOrders()';
}


}




/// @nodoc
mixin _$OrderState {

 OrderStatus get status; String get error; List<ShippingAddressModel> get addresses; List<Orders> get orders; int? get shippingAddressId; bool get fetchAdress; bool get addressSubmitted; OrderReponse? get orderResponse;
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStateCopyWith<OrderState> get copyWith => _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.shippingAddressId, shippingAddressId) || other.shippingAddressId == shippingAddressId)&&(identical(other.fetchAdress, fetchAdress) || other.fetchAdress == fetchAdress)&&(identical(other.addressSubmitted, addressSubmitted) || other.addressSubmitted == addressSubmitted)&&(identical(other.orderResponse, orderResponse) || other.orderResponse == orderResponse));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,const DeepCollectionEquality().hash(addresses),const DeepCollectionEquality().hash(orders),shippingAddressId,fetchAdress,addressSubmitted,orderResponse);

@override
String toString() {
  return 'OrderState(status: $status, error: $error, addresses: $addresses, orders: $orders, shippingAddressId: $shippingAddressId, fetchAdress: $fetchAdress, addressSubmitted: $addressSubmitted, orderResponse: $orderResponse)';
}


}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res>  {
  factory $OrderStateCopyWith(OrderState value, $Res Function(OrderState) _then) = _$OrderStateCopyWithImpl;
@useResult
$Res call({
 OrderStatus status, String error, List<ShippingAddressModel> addresses, List<Orders> orders, int? shippingAddressId, bool fetchAdress, bool addressSubmitted, OrderReponse? orderResponse
});


$OrderReponseCopyWith<$Res>? get orderResponse;

}
/// @nodoc
class _$OrderStateCopyWithImpl<$Res>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? error = null,Object? addresses = null,Object? orders = null,Object? shippingAddressId = freezed,Object? fetchAdress = null,Object? addressSubmitted = null,Object? orderResponse = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<ShippingAddressModel>,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Orders>,shippingAddressId: freezed == shippingAddressId ? _self.shippingAddressId : shippingAddressId // ignore: cast_nullable_to_non_nullable
as int?,fetchAdress: null == fetchAdress ? _self.fetchAdress : fetchAdress // ignore: cast_nullable_to_non_nullable
as bool,addressSubmitted: null == addressSubmitted ? _self.addressSubmitted : addressSubmitted // ignore: cast_nullable_to_non_nullable
as bool,orderResponse: freezed == orderResponse ? _self.orderResponse : orderResponse // ignore: cast_nullable_to_non_nullable
as OrderReponse?,
  ));
}
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderReponseCopyWith<$Res>? get orderResponse {
    if (_self.orderResponse == null) {
    return null;
  }

  return $OrderReponseCopyWith<$Res>(_self.orderResponse!, (value) {
    return _then(_self.copyWith(orderResponse: value));
  });
}
}


/// @nodoc


class _OrderState implements OrderState {
  const _OrderState({this.status = OrderStatus.initial, this.error = '', final  List<ShippingAddressModel> addresses = const [], final  List<Orders> orders = const [], this.shippingAddressId = null, this.fetchAdress = false, this.addressSubmitted = false, this.orderResponse = null}): _addresses = addresses,_orders = orders;
  

@override@JsonKey() final  OrderStatus status;
@override@JsonKey() final  String error;
 final  List<ShippingAddressModel> _addresses;
@override@JsonKey() List<ShippingAddressModel> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  List<Orders> _orders;
@override@JsonKey() List<Orders> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override@JsonKey() final  int? shippingAddressId;
@override@JsonKey() final  bool fetchAdress;
@override@JsonKey() final  bool addressSubmitted;
@override@JsonKey() final  OrderReponse? orderResponse;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStateCopyWith<_OrderState> get copyWith => __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.shippingAddressId, shippingAddressId) || other.shippingAddressId == shippingAddressId)&&(identical(other.fetchAdress, fetchAdress) || other.fetchAdress == fetchAdress)&&(identical(other.addressSubmitted, addressSubmitted) || other.addressSubmitted == addressSubmitted)&&(identical(other.orderResponse, orderResponse) || other.orderResponse == orderResponse));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_orders),shippingAddressId,fetchAdress,addressSubmitted,orderResponse);

@override
String toString() {
  return 'OrderState(status: $status, error: $error, addresses: $addresses, orders: $orders, shippingAddressId: $shippingAddressId, fetchAdress: $fetchAdress, addressSubmitted: $addressSubmitted, orderResponse: $orderResponse)';
}


}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(_OrderState value, $Res Function(_OrderState) _then) = __$OrderStateCopyWithImpl;
@override @useResult
$Res call({
 OrderStatus status, String error, List<ShippingAddressModel> addresses, List<Orders> orders, int? shippingAddressId, bool fetchAdress, bool addressSubmitted, OrderReponse? orderResponse
});


@override $OrderReponseCopyWith<$Res>? get orderResponse;

}
/// @nodoc
class __$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? error = null,Object? addresses = null,Object? orders = null,Object? shippingAddressId = freezed,Object? fetchAdress = null,Object? addressSubmitted = null,Object? orderResponse = freezed,}) {
  return _then(_OrderState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<ShippingAddressModel>,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<Orders>,shippingAddressId: freezed == shippingAddressId ? _self.shippingAddressId : shippingAddressId // ignore: cast_nullable_to_non_nullable
as int?,fetchAdress: null == fetchAdress ? _self.fetchAdress : fetchAdress // ignore: cast_nullable_to_non_nullable
as bool,addressSubmitted: null == addressSubmitted ? _self.addressSubmitted : addressSubmitted // ignore: cast_nullable_to_non_nullable
as bool,orderResponse: freezed == orderResponse ? _self.orderResponse : orderResponse // ignore: cast_nullable_to_non_nullable
as OrderReponse?,
  ));
}

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderReponseCopyWith<$Res>? get orderResponse {
    if (_self.orderResponse == null) {
    return null;
  }

  return $OrderReponseCopyWith<$Res>(_self.orderResponse!, (value) {
    return _then(_self.copyWith(orderResponse: value));
  });
}
}

// dart format on
