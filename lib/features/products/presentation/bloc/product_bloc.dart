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
    on<_LoadProductsByCategory>(_onLoadProductsByCategory);
    on<_LoadMoreProductsByCategory>(_onLoadMoreProductsByCategory);
    on<_LoadProduct>(_onLoadProduct);
    on<_SearchProducts>(_onSearchProducts);
    on<_LoadMoreSearchProducts>(_onLoadMoresearchproducts);
    on<_UpdateSearchKeyword>(_onUpdateSearchKeyword);
    on<_UpdateFilters>(_onUpateFilters);
    on<_ResetSearchState>(_onResetSearchState);
  }

  Future<void> onGetAllCategories(
    _LoadCategories event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: ProductStatus.loading));
    final results = await _productRepository.getCategories();
    results.when(
      success: (data) {
        emit(
          state.copyWith(status: ProductStatus.success, categories: data.data),
        );
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
    if (state.allProducts.hasReachedMax || state.allProducts.isLoadingMore) {
      return;
    }

    final nextPage = state.allProducts.currentPage + 1;

    emit(
      state.copyWith(
        allProducts: state.allProducts.copyWith(isLoadingMore: true),
      ),
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
            allProducts: state.allProducts.copyWith(
              isLoadingMore: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _onUpdateSearchKeyword(
    _UpdateSearchKeyword event,
    Emitter<ProductState> emit,
  ) {
    emit(state.copyWith(searchKeyword: event.keyword));
  }

  FutureOr<void> _onUpateFilters(
    _UpdateFilters event,
    Emitter<ProductState> emit,
  ) {
    final count =
        [
          event.categoryId,
          event.minPrice,
          event.maxPrice,
        ].where((e) => e != null).length;

    emit(
      state.copyWith(
        selectedCategoryId: event.categoryId,
        minPrice: event.minPrice,
        maxPrice: event.maxPrice,
        activeFiltersCount: count,
      ),
    );
  }

  FutureOr<void> _onResetSearchState(
    _ResetSearchState event,
    Emitter<ProductState> emit,
  ) {
    emit(
      state.copyWith(
        searchKeyword: '',
        hasSearched: false,
        searchResults: PaginatedData<ProductModel>(),
        selectedCategoryId: null,
        minPrice: null,
        maxPrice: null,
        activeFiltersCount: 0,
      ),
    );
  }

  // SEARCHING PRODUCTS
  Future<void> _onSearchProducts(
    _SearchProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        hasSearched: true,
        searchResults: state.searchResults.copyWith(
          isLoading: true,
          error: null,
        ),
      ),
    );

    final result = await _productRepository.searchProducts(
      keyword: state.searchKeyword,
      categoryId: state.selectedCategoryId,
      minPrice: state.minPrice,
      maxPrice: state.maxPrice,
      page: 1,
      limit: state.searchResults.itemsPerPage,
    );

    result.when(
      success: (data) {
        emit(
          state.copyWith(
            searchResults: state.searchResults.copyWith(
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
            searchResults: state.searchResults.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoresearchproducts(
    _LoadMoreSearchProducts event,
    Emitter<ProductState> emit,
  ) async {
    if (state.searchResults.hasReachedMax ||
        state.searchResults.isLoadingMore) {
      return;
    }

    final nextPage = state.searchResults.currentPage + 1;

    emit(
      state.copyWith(
        searchResults: state.searchResults.copyWith(
          isLoadingMore: true,
          hasStartedLoadingMore: true,
        ),
      ),
    );

    final results = await _productRepository.searchProducts(
      keyword: state.searchKeyword,
      categoryId: state.selectedCategoryId,
      minPrice: state.minPrice,
      maxPrice: state.maxPrice,
      page: nextPage,
      limit: state.searchResults.itemsPerPage,
    );

    results.when(
      success: (data) {
        final newItems = List<ProductModel>.from(state.searchResults.items)
          ..addAll(data.data.data);
        emit(
          state.copyWith(
            searchResults: state.searchResults.copyWith(
              isLoadingMore: false,
              items: newItems,
              //  hasStartedLoadingMore: false,
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
            searchResults: state.searchResults.copyWith(
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

  Future<void> _onLoadProduct(
    _LoadProduct event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(product: null, status: ProductStatus.loading));
    final result = await _productRepository.getSingleProduct(event.id);
    result.when(
      success: (data) {
        emit(state.copyWith(product: data.data, status: ProductStatus.success));
      },
      failure: (error) {
        emit(
          state.copyWith(error: error.message, status: ProductStatus.failure),
        );
      },
    );
  }
}
