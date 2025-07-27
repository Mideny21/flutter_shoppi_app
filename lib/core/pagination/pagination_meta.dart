import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_meta.freezed.dart';
part 'pagination_meta.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    required int itemsPerPage,
    required int totalItems,
    required int currentPage,
    required int totalPages,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}
