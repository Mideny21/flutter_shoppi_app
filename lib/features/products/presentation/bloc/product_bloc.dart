import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/pagination/pagination.dart';
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
    on<_LoadProductsByCategory>(_onLoadProductsByCategory);
    on<_LoadMoreProductsByCategory>(_onLoadMoreProductsByCategory);
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

  Future<void> _onLoadProducts(
    _LoadProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        allproducts: state.allproducts.copyWith(isLoading: true, error: null),
      ),
    );

    final results = await _productRepository.getProducts(
      page: 1,
      limit: state.allproducts.itemsPerPage,
    );

    results.when(
      success: (data) {
        emit(
          state.copyWith(
            allproducts: state.allproducts.copyWith(
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
            allproducts: state.allproducts.copyWith(
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
    if (state.allproducts.hasReachedMax || state.allproducts.isLoadingMore) {
      return;
    }

    final nextPage = state.allproducts.currentPage + 1;

    emit(
      state.copyWith(
        allproducts: state.allproducts.copyWith(isLoadingMore: true),
      ),
    );

    final results = await _productRepository.getProducts(
      page: nextPage,
      limit: state.allproducts.itemsPerPage,
    );

    results.when(
      success: (data) {
        final newItems = List<ProductModel>.from(state.allproducts.items)
          ..addAll(data.data.data);

        emit(
          state.copyWith(
            allproducts: state.allproducts.copyWith(
              isLoadingMore: false,
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
            allproducts: state.allproducts.copyWith(
              isLoadingMore: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onLoadProductsByCategory(
    _LoadProductsByCategory event,
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        categoryProducts: state.categoryProducts.copyWith(
          isLoading: true,
          error: null,
        ),
      ),
    );

    final results = await _productRepository.getProductsByCategory(
      page: 1,
      limit: state.categoryProducts.itemsPerPage,
      categoryId: event.id,
    );

    results.when(
      success: (data) {
        emit(
          state.copyWith(
            categoryProducts: state.categoryProducts.copyWith(
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
            categoryProducts: state.categoryProducts.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreProductsByCategory(
    _LoadMoreProductsByCategory event,
    Emitter<ProductState> emit,
  ) async {
    if (state.categoryProducts.hasReachedMax ||
        state.categoryProducts.isLoadingMore) {
      return;
    }

    final nextPage = state.categoryProducts.currentPage + 1;

    emit(
      state.copyWith(
        categoryProducts: state.categoryProducts.copyWith(isLoadingMore: true),
      ),
    );

    final results = await _productRepository.getProductsByCategory(
      page: nextPage,
      limit: state.categoryProducts.itemsPerPage,
      categoryId: event.id,
    );

    results.when(
      success: (data) {
        final newItems = List<ProductModel>.from(state.categoryProducts.items)
          ..addAll(data.data.data);
        emit(
          state.copyWith(
            categoryProducts: state.categoryProducts.copyWith(
              isLoadingMore: false,
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
            categoryProducts: state.categoryProducts.copyWith(
              isLoadingMore: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }
}
