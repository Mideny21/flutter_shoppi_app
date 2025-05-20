part of 'product_bloc.dart';

enum ProductStatus { initial, loading, success, failure }

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default('') String error,
    @Default(ProductStatus.initial) ProductStatus status,
    @Default(<Categorymodel>[]) List<Categorymodel> categories,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState();
}
