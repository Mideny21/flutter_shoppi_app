part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadCategories() = _LoadCategories;
  // ALL PRODUCTS EVENT
  const factory ProductEvent.loadProducts() = _LoadProducts;
  const factory ProductEvent.loadMoreProducts() = _LoadMoreProducts;
  const factory ProductEvent.refreshProducts() = _RefreshProducts;

  // CATEGORY PRODUCTS EVENT
  const factory ProductEvent.loadProductsByCategory(int id) =
      _LoadProductsByCategory;
  const factory ProductEvent.loadMoreProductsByCategory(int id) =
      _LoadMoreProductsByCategory;
  const factory ProductEvent.loadProduct(int id) = _LoadProduct;
  const factory ProductEvent.updateSearchKeyword(String keyword) =
      _UpdateSearchKeyword;
  const factory ProductEvent.updateFilters({
    int? categoryId,
    String? minPrice,
    String? maxPrice,
  }) = _UpdateFilters;
  const factory ProductEvent.searchProducts() = _SearchProducts;
  const factory ProductEvent.loadMoreSearchProducts() = _LoadMoreSearchProducts;
  const factory ProductEvent.resetSearchState() = _ResetSearchState;
}
