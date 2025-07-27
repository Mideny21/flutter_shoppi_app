import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/products/products.dart';

part 'product_state.dart';
part 'product_event.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  ProductBloc(this._productRepository) : super(ProductState.initial()) {
    on<_LoadCategories>(onGetAllCategories);
  }

  Future<void> onGetAllCategories(
    _LoadCategories event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(categoryStatus: CategoryStatus.loading));
    final result = await _productRepository.getCategories();
    result.when(
      success: (data) {
        emit(
          state.copyWith(
            categories: data.data,
            categoryStatus: CategoryStatus.success,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            categoryStatus: CategoryStatus.failure,
            error: error.message,
          ),
        );
      },
    );
  }
}
