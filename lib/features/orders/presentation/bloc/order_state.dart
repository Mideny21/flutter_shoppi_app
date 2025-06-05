part of 'order_bloc.dart';

enum OrderStatus {
  initial,
  loading,
  success,
  failure,
  isLoading,
  submittingAdress,
}

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    @Default(OrderStatus.initial) OrderStatus status,
    @Default('') String error,
    @Default([]) List<ShippingAddressModel> addresses,
    @Default([]) List<Orders> orders,
    @Default(null) int? shippingAddressId,
    @Default(false) bool fetchAdress,
    @Default(false) bool addressSubmitted,
    @Default(null) OrderReponse? orderResponse,
  }) = _OrderState;
  factory OrderState.initial() => const OrderState();
}
