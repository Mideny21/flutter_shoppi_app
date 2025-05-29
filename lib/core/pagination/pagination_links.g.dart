// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) =>
    _PaginationLinks(
      first: json['first'] as String?,
      last: json['last'] as String?,
      current: json['current'] as String?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$PaginationLinksToJson(_PaginationLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'current': instance.current,
      'next': instance.next,
      'previous': instance.previous,
    };
