part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.fetchUserAddress() = _FetchUserAddress;
  const factory OrderEvent.createShippingAddress(ShippingAddressParam param) =
      _CreateShippingAddress;
  const factory OrderEvent.selectShippingAddressId(int id) =
      _SelectShipppingAddress;
  const factory OrderEvent.createOrder(OrderParams param) = _CreateOrder;
  const factory OrderEvent.fetchOrders() = _FetchOrders;
}
