import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/orders/orders.dart';

part 'order_state.dart';
part 'order_event.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository _orderRepository;
  OrderBloc(this._orderRepository) : super(OrderState.initial()) {
    on<_FetchUserAddress>(_onfetchUserAddress);
  }

  Future<void> _onfetchUserAddress(
    _FetchUserAddress event,
    Emitter<OrderState> emit,
  ) async {
    emit(
      state.copyWith(
        shippingAddressStatus: ShippingAddressStatus.loading,
        error: '',
      ),
    );

    final result = await _orderRepository.fetchUserAddress();
    result.when(
      success: (data) {
        emit(
          state.copyWith(
            shippingAddressStatus: ShippingAddressStatus.addressLoaded,
            addresses: data.data,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            shippingAddressStatus: ShippingAddressStatus.failure,
            error: error.message,
          ),
        );
      },
    );
  }
}
