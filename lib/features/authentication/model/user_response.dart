import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required User user,
    required String accessToken,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String name,
    required String address,
    required String role,
    required String createdAt,
    required String updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
