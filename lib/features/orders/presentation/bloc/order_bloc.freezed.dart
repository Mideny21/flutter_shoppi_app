// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderState {

 ShippingAddressStatus get shippingAddressStatus; List<Shippingaddressmodel> get addresses; String get error; bool get fetchAddress; bool get addressSubmitted;
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStateCopyWith<OrderState> get copyWith => _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState&&(identical(other.shippingAddressStatus, shippingAddressStatus) || other.shippingAddressStatus == shippingAddressStatus)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchAddress, fetchAddress) || other.fetchAddress == fetchAddress)&&(identical(other.addressSubmitted, addressSubmitted) || other.addressSubmitted == addressSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,shippingAddressStatus,const DeepCollectionEquality().hash(addresses),error,fetchAddress,addressSubmitted);

@override
String toString() {
  return 'OrderState(shippingAddressStatus: $shippingAddressStatus, addresses: $addresses, error: $error, fetchAddress: $fetchAddress, addressSubmitted: $addressSubmitted)';
}


}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res>  {
  factory $OrderStateCopyWith(OrderState value, $Res Function(OrderState) _then) = _$OrderStateCopyWithImpl;
@useResult
$Res call({
 ShippingAddressStatus shippingAddressStatus, List<Shippingaddressmodel> addresses, String error, bool fetchAddress, bool addressSubmitted
});




}
/// @nodoc
class _$OrderStateCopyWithImpl<$Res>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shippingAddressStatus = null,Object? addresses = null,Object? error = null,Object? fetchAddress = null,Object? addressSubmitted = null,}) {
  return _then(_self.copyWith(
shippingAddressStatus: null == shippingAddressStatus ? _self.shippingAddressStatus : shippingAddressStatus // ignore: cast_nullable_to_non_nullable
as ShippingAddressStatus,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<Shippingaddressmodel>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,fetchAddress: null == fetchAddress ? _self.fetchAddress : fetchAddress // ignore: cast_nullable_to_non_nullable
as bool,addressSubmitted: null == addressSubmitted ? _self.addressSubmitted : addressSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderState value)  $default,){
final _that = this;
switch (_that) {
case _OrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ShippingAddressStatus shippingAddressStatus,  List<Shippingaddressmodel> addresses,  String error,  bool fetchAddress,  bool addressSubmitted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.shippingAddressStatus,_that.addresses,_that.error,_that.fetchAddress,_that.addressSubmitted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ShippingAddressStatus shippingAddressStatus,  List<Shippingaddressmodel> addresses,  String error,  bool fetchAddress,  bool addressSubmitted)  $default,) {final _that = this;
switch (_that) {
case _OrderState():
return $default(_that.shippingAddressStatus,_that.addresses,_that.error,_that.fetchAddress,_that.addressSubmitted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ShippingAddressStatus shippingAddressStatus,  List<Shippingaddressmodel> addresses,  String error,  bool fetchAddress,  bool addressSubmitted)?  $default,) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.shippingAddressStatus,_that.addresses,_that.error,_that.fetchAddress,_that.addressSubmitted);case _:
  return null;

}
}

}

/// @nodoc


class _OrderState implements OrderState {
  const _OrderState({this.shippingAddressStatus = ShippingAddressStatus.initial, final  List<Shippingaddressmodel> addresses = const [], this.error = '', this.fetchAddress = false, this.addressSubmitted = false}): _addresses = addresses;
  

@override@JsonKey() final  ShippingAddressStatus shippingAddressStatus;
 final  List<Shippingaddressmodel> _addresses;
@override@JsonKey() List<Shippingaddressmodel> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override@JsonKey() final  String error;
@override@JsonKey() final  bool fetchAddress;
@override@JsonKey() final  bool addressSubmitted;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStateCopyWith<_OrderState> get copyWith => __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderState&&(identical(other.shippingAddressStatus, shippingAddressStatus) || other.shippingAddressStatus == shippingAddressStatus)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchAddress, fetchAddress) || other.fetchAddress == fetchAddress)&&(identical(other.addressSubmitted, addressSubmitted) || other.addressSubmitted == addressSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,shippingAddressStatus,const DeepCollectionEquality().hash(_addresses),error,fetchAddress,addressSubmitted);

@override
String toString() {
  return 'OrderState(shippingAddressStatus: $shippingAddressStatus, addresses: $addresses, error: $error, fetchAddress: $fetchAddress, addressSubmitted: $addressSubmitted)';
}


}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(_OrderState value, $Res Function(_OrderState) _then) = __$OrderStateCopyWithImpl;
@override @useResult
$Res call({
 ShippingAddressStatus shippingAddressStatus, List<Shippingaddressmodel> addresses, String error, bool fetchAddress, bool addressSubmitted
});




}
/// @nodoc
class __$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shippingAddressStatus = null,Object? addresses = null,Object? error = null,Object? fetchAddress = null,Object? addressSubmitted = null,}) {
  return _then(_OrderState(
shippingAddressStatus: null == shippingAddressStatus ? _self.shippingAddressStatus : shippingAddressStatus // ignore: cast_nullable_to_non_nullable
as ShippingAddressStatus,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<Shippingaddressmodel>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,fetchAddress: null == fetchAddress ? _self.fetchAddress : fetchAddress // ignore: cast_nullable_to_non_nullable
as bool,addressSubmitted: null == addressSubmitted ? _self.addressSubmitted : addressSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

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


/// Adds pattern-matching-related methods to [OrderEvent].
extension OrderEventPatterns on OrderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchUserAddress value)?  fetchUserAddress,TResult Function( _CreateShippingAddress value)?  createShippingAddress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchUserAddress() when fetchUserAddress != null:
return fetchUserAddress(_that);case _CreateShippingAddress() when createShippingAddress != null:
return createShippingAddress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchUserAddress value)  fetchUserAddress,required TResult Function( _CreateShippingAddress value)  createShippingAddress,}){
final _that = this;
switch (_that) {
case _FetchUserAddress():
return fetchUserAddress(_that);case _CreateShippingAddress():
return createShippingAddress(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchUserAddress value)?  fetchUserAddress,TResult? Function( _CreateShippingAddress value)?  createShippingAddress,}){
final _that = this;
switch (_that) {
case _FetchUserAddress() when fetchUserAddress != null:
return fetchUserAddress(_that);case _CreateShippingAddress() when createShippingAddress != null:
return createShippingAddress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchUserAddress,TResult Function( ShippingAddressParam param)?  createShippingAddress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchUserAddress() when fetchUserAddress != null:
return fetchUserAddress();case _CreateShippingAddress() when createShippingAddress != null:
return createShippingAddress(_that.param);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchUserAddress,required TResult Function( ShippingAddressParam param)  createShippingAddress,}) {final _that = this;
switch (_that) {
case _FetchUserAddress():
return fetchUserAddress();case _CreateShippingAddress():
return createShippingAddress(_that.param);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchUserAddress,TResult? Function( ShippingAddressParam param)?  createShippingAddress,}) {final _that = this;
switch (_that) {
case _FetchUserAddress() when fetchUserAddress != null:
return fetchUserAddress();case _CreateShippingAddress() when createShippingAddress != null:
return createShippingAddress(_that.param);case _:
  return null;

}
}

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

// dart format on
