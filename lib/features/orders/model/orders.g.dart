// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Orders _$OrdersFromJson(Map<String, dynamic> json) => _Orders(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  status: json['status'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updateAt: DateTime.parse(json['updateAt'] as String),
  totalPrice: (json['totalPrice'] as num).toDouble(),
  shippingAdressId: (json['shippingAdressId'] as num).toInt(),
  orderItems:
      (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
  shipping: Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrdersToJson(_Orders instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'status': instance.status,
  'createdAt': instance.createdAt.toIso8601String(),
  'updateAt': instance.updateAt.toIso8601String(),
  'totalPrice': instance.totalPrice,
  'shippingAdressId': instance.shippingAdressId,
  'orderItems': instance.orderItems,
  'shipping': instance.shipping,
};

_OrderItemResponse _$OrderItemResponseFromJson(Map<String, dynamic> json) =>
    _OrderItemResponse(
      id: (json['id'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updateAt: DateTime.parse(json['updateAt'] as String),
      name: json['name'] as String,
      image: json['image'] as String?,
      price: json['price'] as String,
      total: json['total'] as String,
    );

Map<String, dynamic> _$OrderItemResponseToJson(_OrderItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt.toIso8601String(),
      'updateAt': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'total': instance.total,
    };

_Shipping _$ShippingFromJson(Map<String, dynamic> json) => _Shipping(
  id: (json['id'] as num).toInt(),
  city: json['city'] as String,
  street: json['street'] as String,
  zipcode: json['zipcode'] as String,
  userId: (json['userId'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ShippingToJson(_Shipping instance) => <String, dynamic>{
  'id': instance.id,
  'city': instance.city,
  'street': instance.street,
  'zipcode': instance.zipcode,
  'userId': instance.userId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
