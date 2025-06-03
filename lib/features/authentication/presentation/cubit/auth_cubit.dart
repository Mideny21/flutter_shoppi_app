import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/utils/app_logger.dart';

import 'package:shoppi/features/authentication/authentication.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  final AuthService _authService;
  AuthCubit(this._authRepository, this._authService)
    : super(AuthState.initial());

  void onLoginToggle() {
    emit(state.copyWith(showLogin: !state.showLogin));
  }

  Future<void> onLoadUser() async {
    emit(state.copyWith(user: null));
    try {
      final userinfo = await _authService.getUserData();
      if (userinfo != null) {
        log.d("User found  ${userinfo.name}");
        emit(state.copyWith(user: userinfo));
      } else {
        log.d("User not found ${userinfo?.name}");
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), status: UserStatus.error));
    }
  }

  Future<void> register(CreateUserParam param) async {
    emit(state.copyWith(status: UserStatus.loading));
    final result = await _authRepository.register(param);
    await result.when(
      success: (data) async {
        emit(state.copyWith(status: UserStatus.loaded, showLogin: true));
      },
      failure: (error) {
        emit(state.copyWith(status: UserStatus.error, error: error.message));
      },
    );
  }

  Future<void> login(LoginParam param) async {
    emit(state.copyWith(status: UserStatus.loading));
    final result = await _authRepository.login(param);
    await result.when(
      success: (data) async {
        var userdata = UserData(
          name: data.data.user.name,
          email: data.data.user.email,
          id: data.data.user.id,
          accessToken: data.data.accessToken,
        );

        await _authService.saveUserData(userdata).then((value) {
          if (value != null) {
            emit(state.copyWith(status: UserStatus.loaded, user: userdata));
          }
        });
      },
      failure: (error) {
        emit(state.copyWith(status: UserStatus.error, error: error.message));
      },
    );
  }

  Future<void> logout() async {
    await _authService.deleteUserData();
    emit(state.copyWith(status: UserStatus.initial));
  }
}
