// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    _ProductResponse(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseToJson(_ProductResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
