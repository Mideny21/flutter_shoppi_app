// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  name: json['name'] as String,
  address: json['address'] as String,
  role: json['role'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'address': instance.address,
  'role': instance.role,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
