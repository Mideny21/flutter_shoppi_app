import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoppi/features/products/model/productimage.dart';

part 'productmodel.freezed.dart';
part 'productmodel.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    required int id,
    required String name,
    required String price,
    required String description,
    required String stock,
    required int categoryId,
    required DateTime createdAt,
    required DateTime updateAt,
    @JsonKey(name: 'ProductImage') List<ProductImage>? productImage,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
