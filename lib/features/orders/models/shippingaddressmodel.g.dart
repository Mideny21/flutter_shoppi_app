// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shippingaddressmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shippingaddressmodel _$ShippingaddressmodelFromJson(
  Map<String, dynamic> json,
) => _Shippingaddressmodel(
  id: (json['id'] as num).toInt(),
  city: json['city'] as String,
  street: json['street'] as String,
  zipcode: json['zipcode'] as String,
);

Map<String, dynamic> _$ShippingaddressmodelToJson(
  _Shippingaddressmodel instance,
) => <String, dynamic>{
  'id': instance.id,
  'city': instance.city,
  'street': instance.street,
  'zipcode': instance.zipcode,
};
