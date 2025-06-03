import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/api_response.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/network_service.dart';
import 'package:shoppi/features/authentication/authentication.dart';

@lazySingleton
class AuthRepository {
  final NetworkService _networkService;

  AuthRepository(this._networkService);

  Future<ApiResult<ApiResponse<UserResponse>>> login(LoginParam param) async {
    final result = await _networkService.post(
      'auth/login',
      data: param.toJson(),
    );
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<UserResponse>.fromJson(
            response.data['data'],
            (json) => UserResponse.fromJson(json as Map<String, dynamic>),
          ),
        );
      },
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }

  Future<ApiResult<ApiResponse<bool>>> register(CreateUserParam param) async {
    final result = await _networkService.post('auth/signup');
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<bool>.fromJson(
            response.data['success'],
            (json) => json as bool,
          ),
        );
      },
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }
}
