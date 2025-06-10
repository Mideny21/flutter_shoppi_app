import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/orders/orders.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository _orderRepository;
  OrderBloc(this._orderRepository) : super(OrderState.initial()) {
    on<_FetchUserAddress>(_onfetchUserAddress);
    on<_CreateShippingAddress>(_onCreateShippingAddress);
    on<_CreateOrder>(_onCreateOrder);
    on<_SelectShipppingAddress>(_onSelectShippingAddress);
    on<_FetchOrders>(_onFetchOrders);
  }

  Future<void> _onfetchUserAddress(
    _FetchUserAddress event,
    Emitter<OrderState> emit,
  ) async {
    emit(
      state.copyWith(
        status: OrderStatus.loading,
        fetchAdress: false,
        error: '',
      ),
    );
    final result = await _orderRepository.fetchUserAddress();
    result.when(
      success: (data) {
        emit(state.copyWith(status: OrderStatus.success, addresses: data.data));
      },
      failure: (error) {
        emit(state.copyWith(status: OrderStatus.initial, error: error.message));
      },
    );
  }

  Future<void> _onCreateShippingAddress(
    _CreateShippingAddress event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(status: OrderStatus.submittingAdress, error: ''));
    final result = await _orderRepository.createShippingAddress(event.param);
    result.when(
      success: (success) {
        if (success) {
          emit(
            state.copyWith(
              status: OrderStatus.initial,
              fetchAdress: true,
              addressSubmitted: true,
            ),
          );
        }
      },
      failure: (error) {
        emit(state.copyWith(status: OrderStatus.initial, error: error.message));
      },
    );
  }

  void _onSelectShippingAddress(
    _SelectShipppingAddress event,
    Emitter<OrderState> emit,
  ) {
    emit(state.copyWith(shippingAddressId: event.id));
  }

  Future<void> _onCreateOrder(
    _CreateOrder event,
    Emitter<OrderState> emit,
  ) async {
    emit(
      state.copyWith(
        status: OrderStatus.isLoading,
        orderResponse: null,
        addressSubmitted: false,
        fetchAdress: false,
        error: '',
      ),
    );
    final result = await _orderRepository.createOrder(event.param);
    result.when(
      success: (data) {
        emit(
          state.copyWith(status: OrderStatus.success, orderResponse: data.data),
        );
      },
      failure: (error) {
        emit(state.copyWith(status: OrderStatus.initial, error: error.message));
      },
    );
  }

  Future<void> _onFetchOrders(
    _FetchOrders event,
    Emitter<OrderState> emit,
  ) async {
    emit(
      state.copyWith(
        status: OrderStatus.isLoading,
        fetchAdress: false,
        error: '',
      ),
    );
    final result = await _orderRepository.fetchOrders();
    result.when(
      success: (data) {
        emit(state.copyWith(status: OrderStatus.initial, orders: data.data));
      },
      failure: (error) {
        emit(state.copyWith(error: error.message, status: OrderStatus.initial));
      },
    );
  }
}
