// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderReponse _$OrderReponseFromJson(Map<String, dynamic> json) =>
    _OrderReponse(
      id: (json['id'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$OrderReponseToJson(_OrderReponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'totalPrice': instance.totalPrice,
      'createdAt': instance.createdAt.toIso8601String(),
    };
