// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponse<T> {

 T get data; int get statusCode; String get message; bool get success; String get timestamp;
/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseCopyWith<T, ApiResponse<T>> get copyWith => _$ApiResponseCopyWithImpl<T, ApiResponse<T>>(this as ApiResponse<T>, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),statusCode,message,success,timestamp);

@override
String toString() {
  return 'ApiResponse<$T>(data: $data, statusCode: $statusCode, message: $message, success: $success, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<T,$Res>  {
  factory $ApiResponseCopyWith(ApiResponse<T> value, $Res Function(ApiResponse<T>) _then) = _$ApiResponseCopyWithImpl;
@useResult
$Res call({
 T data, int statusCode, String message, bool success, String timestamp
});




}
/// @nodoc
class _$ApiResponseCopyWithImpl<T,$Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse<T> _self;
  final $Res Function(ApiResponse<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? statusCode = null,Object? message = null,Object? success = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiResponse<T> implements ApiResponse<T> {
  const _ApiResponse({required this.data, required this.statusCode, required this.message, required this.success, required this.timestamp});
  factory _ApiResponse.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json,fromJsonT);

@override final  T data;
@override final  int statusCode;
@override final  String message;
@override final  bool success;
@override final  String timestamp;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseCopyWith<T, _ApiResponse<T>> get copyWith => __$ApiResponseCopyWithImpl<T, _ApiResponse<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResponseToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponse<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),statusCode,message,success,timestamp);

@override
String toString() {
  return 'ApiResponse<$T>(data: $data, statusCode: $statusCode, message: $message, success: $success, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory _$ApiResponseCopyWith(_ApiResponse<T> value, $Res Function(_ApiResponse<T>) _then) = __$ApiResponseCopyWithImpl;
@override @useResult
$Res call({
 T data, int statusCode, String message, bool success, String timestamp
});




}
/// @nodoc
class __$ApiResponseCopyWithImpl<T,$Res>
    implements _$ApiResponseCopyWith<T, $Res> {
  __$ApiResponseCopyWithImpl(this._self, this._then);

  final _ApiResponse<T> _self;
  final $Res Function(_ApiResponse<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? statusCode = null,Object? message = null,Object? success = null,Object? timestamp = null,}) {
  return _then(_ApiResponse<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
