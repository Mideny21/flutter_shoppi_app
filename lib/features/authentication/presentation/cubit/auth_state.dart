part of 'auth_cubit.dart';

enum UserStatus { initial, loading, success, failure, loaded }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(UserStatus.initial) UserStatus userStatus,
    @Default(null) UserData? user,
    String? error,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();
}
