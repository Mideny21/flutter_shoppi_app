// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      stock: json['stock'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updateAt: DateTime.parse(json['updateAt'] as String),
      productImage:
          (json['ProductImage'] as List<dynamic>?)
              ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'stock': instance.stock,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updateAt': instance.updateAt.toIso8601String(),
      'ProductImage': instance.productImage,
    };
