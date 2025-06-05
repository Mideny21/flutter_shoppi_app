// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shippingaddressmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShippingAddressModel _$ShippingAddressModelFromJson(
  Map<String, dynamic> json,
) => _ShippingAddressModel(
  id: (json['id'] as num).toInt(),
  city: json['city'] as String,
  street: json['street'] as String,
  zipcode: json['zipcode'] as String,
);

Map<String, dynamic> _$ShippingAddressModelToJson(
  _ShippingAddressModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'city': instance.city,
  'street': instance.street,
  'zipcode': instance.zipcode,
};
