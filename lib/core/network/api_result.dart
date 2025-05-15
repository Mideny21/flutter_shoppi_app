import 'package:shoppi/core/network/exceptions/api_exception.dart';

/// Generic class to handle API responses
class ApiResult<T> {
  final T? data;
  final ApiException? error;
  final bool isSuccess;

  ApiResult._({this.data, this.error, required this.isSuccess});

  factory ApiResult.success(T data) {
    return ApiResult._(data: data, isSuccess: true);
  }

  factory ApiResult.failure(ApiException error) {
    return ApiResult._(error: error, isSuccess: false);
  }

  R when<R>({
    required R Function(T data) success,
    required R Function(ApiException error) failure,
  }) {
    if (isSuccess) {
      return success(data as T);
    } else {
      return failure(error!);
    }
  }
}
