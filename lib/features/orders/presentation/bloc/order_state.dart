part of 'order_bloc.dart';

enum ShippingAddressStatus {
  initial,
  loading,
  failure,
  addressLoaded,
  submittingAddress,
}

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    @Default(ShippingAddressStatus.initial)
    ShippingAddressStatus shippingAddressStatus,
    @Default([]) List<Shippingaddressmodel> addresses,
    @Default('') String error,
  }) = _OrderState;

  factory OrderState.initial() => const OrderState();
}
