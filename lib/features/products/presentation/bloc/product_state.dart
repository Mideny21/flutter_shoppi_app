part of 'product_bloc.dart';

enum ProductStatus { initial, loading, success, failure }

enum CategoryStatus { initial, loading, success, failure }

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default(ProductStatus.initial) ProductStatus productStatus,
    @Default(CategoryStatus.initial) CategoryStatus categoryStatus,
    @Default(<Categorymodel>[]) List<Categorymodel> categories,
    @Default(PaginatedData<ProductModel>())
    PaginatedData<ProductModel> allproducts,
    @Default(PaginatedData<ProductModel>())
    PaginatedData<ProductModel> categoryProducts,
    @Default(null) ProductModel? product,

    // SEARCH PRODUCTS STATES
    @Default(PaginatedData<ProductModel>())
    PaginatedData<ProductModel> searchResults,
    @Default('') String searchKeyword,
    int? selectedCategoryId,
    String? minPrice,
    String? maxPrice,
    @Default(false) bool hasSearched,
    @Default(0) int activeFiltersCount,

    @Default('') String error,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState();
}
