part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  // GET ALL CATEGORIES EVENT
  const factory ProductEvent.loadCategories() = _LoadCategories;

  // PRODUCTS EVENTS
  const factory ProductEvent.loadProducts() = _LoadProducts;
  const factory ProductEvent.loadMoreProducts() = _LoadMoreProducts;

  // PRODUCTS BY CATEGORY EVENTS
  const factory ProductEvent.loadProductsByCategory(int id) =
      _LoadProductsByCategory;

  const factory ProductEvent.loadMoreProductsByCategory(int id) =
      _LoadMoreProductsByCategory;

  // SINGLE PRODUCT EVENT
  const factory ProductEvent.loadSingleProduct(int id) = _LoadSingleProduct;

  // SEARCH PRODUCTS EVENTS
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
