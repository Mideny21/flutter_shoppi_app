import 'package:freezed_annotation/freezed_annotation.dart';

part 'productimage.freezed.dart';
part 'productimage.g.dart';

@freezed
abstract class ProductImage with _$ProductImage {
  factory ProductImage({required String url}) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}
