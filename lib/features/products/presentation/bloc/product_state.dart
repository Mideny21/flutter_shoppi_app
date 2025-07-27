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

    @Default('') String error,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState();
}
