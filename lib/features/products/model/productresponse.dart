import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoppi/core/pagination/pagination_links.dart';
import 'package:shoppi/core/pagination/paginationmeta.dart';
import 'package:shoppi/features/products/model/productmodel.dart';

part 'productresponse.freezed.dart';
part 'productresponse.g.dart';

@freezed
abstract class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required List<ProductModel> data,
    required PaginationMeta meta,
    required PaginationLinks links,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
