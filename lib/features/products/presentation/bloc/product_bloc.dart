import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/products/model/model.dart';
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
    emit(state.copyWith(status: ProductStatus.loading));
    final results = await _productRepository.getCategories();
    results.when(
      success: (data) {
        emit(state.copyWith(status: ProductStatus.success, categories: data));
      },
      failure: (error) {
        emit(state.copyWith(error: error.message));
      },
    );
  }
}
