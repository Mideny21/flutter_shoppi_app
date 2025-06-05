import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders.freezed.dart';
part 'orders.g.dart';

@freezed
abstract class Orders with _$Orders {
  const factory Orders({
    required int id,
    required int userId,
    required String status,
    required DateTime createdAt,
    required DateTime updateAt,
    required double totalPrice,
    required int shippingAdressId,
    required List<OrderItemResponse> orderItems,
    required Shipping shipping,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}

@freezed
abstract class OrderItemResponse with _$OrderItemResponse {
  const factory OrderItemResponse({
    required int id,
    required int orderId,
    required int productId,
    required int quantity,
    required DateTime createdAt,
    required DateTime updateAt,
    required String name,
    required String? image,
    required String price,
    required String total,
  }) = _OrderItemResponse;

  factory OrderItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderItemResponseFromJson(json);
}

@freezed
abstract class Shipping with _$Shipping {
  const factory Shipping({
    required int id,
    required String city,
    required String street,
    required String zipcode,
    required int userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Shipping;

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);
}
