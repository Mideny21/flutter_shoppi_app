part of 'product_bloc.dart';

enum ProductStatus { initial, loading, success, failure }

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default('') String error,
    @Default(ProductStatus.initial) ProductStatus status,
    @Default(<Categorymodel>[]) List<Categorymodel> categories,
    @Default(PaginatedData<ProductModel>())
    PaginatedData<ProductModel> allProducts,
    @Default(PaginatedData<ProductModel>())
    PaginatedData<ProductModel> categoryProducts,
    @Default(PaginatedData<ProductModel>())
    PaginatedData<ProductModel> searchResults,
    @Default('') String searchKeyword,
    int? selectedCategoryId,
    String? minPrice,
    String? maxPrice,
    @Default(null) ProductModel? product,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState();
}
