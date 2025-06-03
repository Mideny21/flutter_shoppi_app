part of 'auth_cubit.dart';

enum UserStatus { initial, loading, loaded, error }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(UserStatus.initial) UserStatus status,
    @Default(null) UserData? user,
    @Default('') String error,
    @Default(false) bool showLogin,
  }) = _AuthState;
  factory AuthState.initial() => const AuthState();
}
