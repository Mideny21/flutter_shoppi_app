import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/authentication/authentication.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  final AuthService _authService;
  AuthCubit(this._authRepository, this._authService)
    : super(AuthState.initial());

  Future<void> register(CreateUserParam param) async {
    emit(state.copyWith(userStatus: UserStatus.loading));
    final result = await _authRepository.register(param);
    await result.when(
      success: (data) async {
        if (data) {
          emit(state.copyWith(userStatus: UserStatus.success));
        }
      },
      failure: (error) {
        emit(
          state.copyWith(userStatus: UserStatus.failure, error: error.message),
        );
      },
    );
  }

  Future<void> login(LoginParam param) async {
    emit(state.copyWith(userStatus: UserStatus.loading));
    final result = await _authRepository.login(param);
    await result.when(
      success: (data) async {
        var userdata = UserData(
          id: data.data.user.id,
          name: data.data.user.name,
          email: data.data.user.email,
          accessToken: data.data.accessToken,
        );

        await _authService.saveUserData(userdata).then((value) {
          if (value != null) {
            emit(state.copyWith(userStatus: UserStatus.loaded, user: userdata));
          }
        });
      },
      failure: (error) {
        emit(
          state.copyWith(userStatus: UserStatus.failure, error: error.message),
        );
      },
    );
  }
}
