part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadCategories() = _LoadCategories;

  const factory ProductEvent.loadProducts() = _LoadProducts;
  const factory ProductEvent.loadMoreProducts() = _LoadMoreProducts;

  const factory ProductEvent.loadProductsByCategory(int id) =
      _LoadProductsByCategory;

  const factory ProductEvent.loadMoreProductsByCategory(int id) =
      _LoadMoreProductsByCategory;
}
