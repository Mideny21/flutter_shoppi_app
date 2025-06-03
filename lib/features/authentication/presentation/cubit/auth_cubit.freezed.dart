// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 UserStatus get status; UserData? get user; String get error; bool get showLogin;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.error, error) || other.error == error)&&(identical(other.showLogin, showLogin) || other.showLogin == showLogin));
}


@override
int get hashCode => Object.hash(runtimeType,status,user,error,showLogin);

@override
String toString() {
  return 'AuthState(status: $status, user: $user, error: $error, showLogin: $showLogin)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 UserStatus status, UserData? user, String error, bool showLogin
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? user = freezed,Object? error = null,Object? showLogin = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,showLogin: null == showLogin ? _self.showLogin : showLogin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.status = UserStatus.initial, this.user = null, this.error = '', this.showLogin = false});
  

@override@JsonKey() final  UserStatus status;
@override@JsonKey() final  UserData? user;
@override@JsonKey() final  String error;
@override@JsonKey() final  bool showLogin;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.error, error) || other.error == error)&&(identical(other.showLogin, showLogin) || other.showLogin == showLogin));
}


@override
int get hashCode => Object.hash(runtimeType,status,user,error,showLogin);

@override
String toString() {
  return 'AuthState(status: $status, user: $user, error: $error, showLogin: $showLogin)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 UserStatus status, UserData? user, String error, bool showLogin
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? user = freezed,Object? error = null,Object? showLogin = null,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,showLogin: null == showLogin ? _self.showLogin : showLogin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
