import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/pagination/paginated_data.dart';
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
    on<_LoadProducts>(_onLoadProducts);
    on<_LoadMoreProducts>(_onLoadMoreProducts);
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

  Future<void> _onLoadProducts(
    _LoadProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        allProducts: state.allProducts.copyWith(isLoading: true, error: null),
      ),
    );

    final results = await _productRepository.getProducts(
      page: 1,
      limit: state.allProducts.itemsPerPage,
    );

    results.when(
      success: (data) {
        emit(
          state.copyWith(
            allProducts: state.allProducts.copyWith(
              isLoading: false,
              items: data.data.data,
              currentPage: data.data.meta.currentPage,
              totalPages: data.data.meta.totalPages,
              totalItems: data.data.meta.totalItems,
              itemsPerPage: data.data.meta.itemsPerPage,
              hasReachedMax:
                  data.data.meta.currentPage >= data.data.meta.totalPages,
            ),
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            allProducts: state.allProducts.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreProducts(
    _LoadMoreProducts event,
    Emitter<ProductState> emit,
  ) async {
    final nextPage = state.allProducts.currentPage + 1;

    if (state.allProducts.hasReachedMax || state.allProducts.isLoadingMore) {
      return;
    }

    emit(
      state.copyWith(allProducts: state.allProducts.copyWith(isLoading: true)),
    );

    final results = await _productRepository.getProducts(
      page: nextPage,
      limit: state.allProducts.itemsPerPage,
    );

    results.when(
      success: (data) {
        final newItems = List<ProductModel>.from(state.allProducts.items)
          ..addAll(data.data.data);
        emit(
          state.copyWith(
            allProducts: state.allProducts.copyWith(
              isLoading: false,
              items: newItems,
              currentPage: data.data.meta.currentPage,
              totalPages: data.data.meta.totalPages,
              totalItems: data.data.meta.totalItems,
              itemsPerPage: data.data.meta.itemsPerPage,
              hasReachedMax:
                  data.data.meta.currentPage >= data.data.meta.totalPages,
            ),
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            allProducts: state.allProducts.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }
}
