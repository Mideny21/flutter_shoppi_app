part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.fetchUserAddress() = _FetchUserAddress;
}
