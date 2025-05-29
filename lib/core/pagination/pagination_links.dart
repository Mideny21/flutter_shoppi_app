import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_links.freezed.dart';
part 'pagination_links.g.dart';

@freezed
abstract class PaginationLinks with _$PaginationLinks {
  const factory PaginationLinks({
    String? first,
    String? last,
    String? current,
    String? next,
    String? previous,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}
