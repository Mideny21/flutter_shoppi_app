// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Orders {

 int get id; int get userId; String get status; DateTime get createdAt; DateTime get updateAt; double get totalPrice; int get shippingAdressId; List<OrderItemResponse> get orderItems; Shipping get shipping;
/// Create a copy of Orders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersCopyWith<Orders> get copyWith => _$OrdersCopyWithImpl<Orders>(this as Orders, _$identity);

  /// Serializes this Orders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Orders&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.shippingAdressId, shippingAdressId) || other.shippingAdressId == shippingAdressId)&&const DeepCollectionEquality().equals(other.orderItems, orderItems)&&(identical(other.shipping, shipping) || other.shipping == shipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,status,createdAt,updateAt,totalPrice,shippingAdressId,const DeepCollectionEquality().hash(orderItems),shipping);

@override
String toString() {
  return 'Orders(id: $id, userId: $userId, status: $status, createdAt: $createdAt, updateAt: $updateAt, totalPrice: $totalPrice, shippingAdressId: $shippingAdressId, orderItems: $orderItems, shipping: $shipping)';
}


}

/// @nodoc
abstract mixin class $OrdersCopyWith<$Res>  {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) _then) = _$OrdersCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String status, DateTime createdAt, DateTime updateAt, double totalPrice, int shippingAdressId, List<OrderItemResponse> orderItems, Shipping shipping
});


$ShippingCopyWith<$Res> get shipping;

}
/// @nodoc
class _$OrdersCopyWithImpl<$Res>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._self, this._then);

  final Orders _self;
  final $Res Function(Orders) _then;

/// Create a copy of Orders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? status = null,Object? createdAt = null,Object? updateAt = null,Object? totalPrice = null,Object? shippingAdressId = null,Object? orderItems = null,Object? shipping = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updateAt: null == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,shippingAdressId: null == shippingAdressId ? _self.shippingAdressId : shippingAdressId // ignore: cast_nullable_to_non_nullable
as int,orderItems: null == orderItems ? _self.orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemResponse>,shipping: null == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as Shipping,
  ));
}
/// Create a copy of Orders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShippingCopyWith<$Res> get shipping {
  
  return $ShippingCopyWith<$Res>(_self.shipping, (value) {
    return _then(_self.copyWith(shipping: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Orders implements Orders {
  const _Orders({required this.id, required this.userId, required this.status, required this.createdAt, required this.updateAt, required this.totalPrice, required this.shippingAdressId, required final  List<OrderItemResponse> orderItems, required this.shipping}): _orderItems = orderItems;
  factory _Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

@override final  int id;
@override final  int userId;
@override final  String status;
@override final  DateTime createdAt;
@override final  DateTime updateAt;
@override final  double totalPrice;
@override final  int shippingAdressId;
 final  List<OrderItemResponse> _orderItems;
@override List<OrderItemResponse> get orderItems {
  if (_orderItems is EqualUnmodifiableListView) return _orderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderItems);
}

@override final  Shipping shipping;

/// Create a copy of Orders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersCopyWith<_Orders> get copyWith => __$OrdersCopyWithImpl<_Orders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Orders&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.shippingAdressId, shippingAdressId) || other.shippingAdressId == shippingAdressId)&&const DeepCollectionEquality().equals(other._orderItems, _orderItems)&&(identical(other.shipping, shipping) || other.shipping == shipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,status,createdAt,updateAt,totalPrice,shippingAdressId,const DeepCollectionEquality().hash(_orderItems),shipping);

@override
String toString() {
  return 'Orders(id: $id, userId: $userId, status: $status, createdAt: $createdAt, updateAt: $updateAt, totalPrice: $totalPrice, shippingAdressId: $shippingAdressId, orderItems: $orderItems, shipping: $shipping)';
}


}

/// @nodoc
abstract mixin class _$OrdersCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$OrdersCopyWith(_Orders value, $Res Function(_Orders) _then) = __$OrdersCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String status, DateTime createdAt, DateTime updateAt, double totalPrice, int shippingAdressId, List<OrderItemResponse> orderItems, Shipping shipping
});


@override $ShippingCopyWith<$Res> get shipping;

}
/// @nodoc
class __$OrdersCopyWithImpl<$Res>
    implements _$OrdersCopyWith<$Res> {
  __$OrdersCopyWithImpl(this._self, this._then);

  final _Orders _self;
  final $Res Function(_Orders) _then;

/// Create a copy of Orders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? status = null,Object? createdAt = null,Object? updateAt = null,Object? totalPrice = null,Object? shippingAdressId = null,Object? orderItems = null,Object? shipping = null,}) {
  return _then(_Orders(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updateAt: null == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,shippingAdressId: null == shippingAdressId ? _self.shippingAdressId : shippingAdressId // ignore: cast_nullable_to_non_nullable
as int,orderItems: null == orderItems ? _self._orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemResponse>,shipping: null == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as Shipping,
  ));
}

/// Create a copy of Orders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShippingCopyWith<$Res> get shipping {
  
  return $ShippingCopyWith<$Res>(_self.shipping, (value) {
    return _then(_self.copyWith(shipping: value));
  });
}
}


/// @nodoc
mixin _$OrderItemResponse {

 int get id; int get orderId; int get productId; int get quantity; DateTime get createdAt; DateTime get updateAt; String get name; String? get image; String get price; String get total;
/// Create a copy of OrderItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemResponseCopyWith<OrderItemResponse> get copyWith => _$OrderItemResponseCopyWithImpl<OrderItemResponse>(this as OrderItemResponse, _$identity);

  /// Serializes this OrderItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,productId,quantity,createdAt,updateAt,name,image,price,total);

@override
String toString() {
  return 'OrderItemResponse(id: $id, orderId: $orderId, productId: $productId, quantity: $quantity, createdAt: $createdAt, updateAt: $updateAt, name: $name, image: $image, price: $price, total: $total)';
}


}

/// @nodoc
abstract mixin class $OrderItemResponseCopyWith<$Res>  {
  factory $OrderItemResponseCopyWith(OrderItemResponse value, $Res Function(OrderItemResponse) _then) = _$OrderItemResponseCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, int productId, int quantity, DateTime createdAt, DateTime updateAt, String name, String? image, String price, String total
});




}
/// @nodoc
class _$OrderItemResponseCopyWithImpl<$Res>
    implements $OrderItemResponseCopyWith<$Res> {
  _$OrderItemResponseCopyWithImpl(this._self, this._then);

  final OrderItemResponse _self;
  final $Res Function(OrderItemResponse) _then;

/// Create a copy of OrderItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? productId = null,Object? quantity = null,Object? createdAt = null,Object? updateAt = null,Object? name = null,Object? image = freezed,Object? price = null,Object? total = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updateAt: null == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrderItemResponse implements OrderItemResponse {
  const _OrderItemResponse({required this.id, required this.orderId, required this.productId, required this.quantity, required this.createdAt, required this.updateAt, required this.name, required this.image, required this.price, required this.total});
  factory _OrderItemResponse.fromJson(Map<String, dynamic> json) => _$OrderItemResponseFromJson(json);

@override final  int id;
@override final  int orderId;
@override final  int productId;
@override final  int quantity;
@override final  DateTime createdAt;
@override final  DateTime updateAt;
@override final  String name;
@override final  String? image;
@override final  String price;
@override final  String total;

/// Create a copy of OrderItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemResponseCopyWith<_OrderItemResponse> get copyWith => __$OrderItemResponseCopyWithImpl<_OrderItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,productId,quantity,createdAt,updateAt,name,image,price,total);

@override
String toString() {
  return 'OrderItemResponse(id: $id, orderId: $orderId, productId: $productId, quantity: $quantity, createdAt: $createdAt, updateAt: $updateAt, name: $name, image: $image, price: $price, total: $total)';
}


}

/// @nodoc
abstract mixin class _$OrderItemResponseCopyWith<$Res> implements $OrderItemResponseCopyWith<$Res> {
  factory _$OrderItemResponseCopyWith(_OrderItemResponse value, $Res Function(_OrderItemResponse) _then) = __$OrderItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, int productId, int quantity, DateTime createdAt, DateTime updateAt, String name, String? image, String price, String total
});




}
/// @nodoc
class __$OrderItemResponseCopyWithImpl<$Res>
    implements _$OrderItemResponseCopyWith<$Res> {
  __$OrderItemResponseCopyWithImpl(this._self, this._then);

  final _OrderItemResponse _self;
  final $Res Function(_OrderItemResponse) _then;

/// Create a copy of OrderItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? productId = null,Object? quantity = null,Object? createdAt = null,Object? updateAt = null,Object? name = null,Object? image = freezed,Object? price = null,Object? total = null,}) {
  return _then(_OrderItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updateAt: null == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Shipping {

 int get id; String get city; String get street; String get zipcode; int get userId; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingCopyWith<Shipping> get copyWith => _$ShippingCopyWithImpl<Shipping>(this as Shipping, _$identity);

  /// Serializes this Shipping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shipping&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,street,zipcode,userId,createdAt,updatedAt);

@override
String toString() {
  return 'Shipping(id: $id, city: $city, street: $street, zipcode: $zipcode, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ShippingCopyWith<$Res>  {
  factory $ShippingCopyWith(Shipping value, $Res Function(Shipping) _then) = _$ShippingCopyWithImpl;
@useResult
$Res call({
 int id, String city, String street, String zipcode, int userId, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$ShippingCopyWithImpl<$Res>
    implements $ShippingCopyWith<$Res> {
  _$ShippingCopyWithImpl(this._self, this._then);

  final Shipping _self;
  final $Res Function(Shipping) _then;

/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? city = null,Object? street = null,Object? zipcode = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,zipcode: null == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Shipping implements Shipping {
  const _Shipping({required this.id, required this.city, required this.street, required this.zipcode, required this.userId, required this.createdAt, required this.updatedAt});
  factory _Shipping.fromJson(Map<String, dynamic> json) => _$ShippingFromJson(json);

@override final  int id;
@override final  String city;
@override final  String street;
@override final  String zipcode;
@override final  int userId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingCopyWith<_Shipping> get copyWith => __$ShippingCopyWithImpl<_Shipping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shipping&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,street,zipcode,userId,createdAt,updatedAt);

@override
String toString() {
  return 'Shipping(id: $id, city: $city, street: $street, zipcode: $zipcode, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ShippingCopyWith<$Res> implements $ShippingCopyWith<$Res> {
  factory _$ShippingCopyWith(_Shipping value, $Res Function(_Shipping) _then) = __$ShippingCopyWithImpl;
@override @useResult
$Res call({
 int id, String city, String street, String zipcode, int userId, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$ShippingCopyWithImpl<$Res>
    implements _$ShippingCopyWith<$Res> {
  __$ShippingCopyWithImpl(this._self, this._then);

  final _Shipping _self;
  final $Res Function(_Shipping) _then;

/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? city = null,Object? street = null,Object? zipcode = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Shipping(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,zipcode: null == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
