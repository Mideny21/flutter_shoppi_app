// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiResponse<T>(
  data: fromJsonT(json['data']),
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  success: json['success'] as bool,
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$ApiResponseToJson<T>(
  _ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': toJsonT(instance.data),
  'statusCode': instance.statusCode,
  'message': instance.message,
  'success': instance.success,
  'timestamp': instance.timestamp,
};
