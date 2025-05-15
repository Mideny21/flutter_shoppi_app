import 'package:dio/dio.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/exceptions/api_exception.dart';

class ApiServiceWrapper {
  /// Wraps API calls in a try-catch block and returns an ApiResult
  static Future<ApiResult<T>> execute<T>({
    required Future<T> Function() apiCall,
  }) async {
    try {
      final response = await apiCall();
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(_handleDioException(e));
    } catch (e) {
      return ApiResult.failure(
        ApiException(message: e.toString(), statusCode: null),
      );
    }
  }

  /// Handles Dio specific exceptions and converts them to ApiException
  static ApiException _handleDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException(
          message:
              'Connection timed out. Please check your internet connection.',
          statusCode: exception.response?.statusCode,
          response: exception.response?.data,
        );
      case DioExceptionType.badResponse:
        return _handleBadResponseException(exception);
      case DioExceptionType.cancel:
        return ApiException(
          message: 'Request was cancelled',
          statusCode: exception.response?.statusCode,
          response: exception.response?.data,
        );
      case DioExceptionType.connectionError:
        return ApiException(
          message: 'No internet connection. Please check your network.',
          statusCode: exception.response?.statusCode,
          response: exception.response?.data,
        );
      default:
        return ApiException(
          message: exception.message ?? 'Something went wrong',
          statusCode: exception.response?.statusCode,
          response: exception.response?.data,
        );
    }
  }

  /// Handles specific status code errors
  static ApiException _handleBadResponseException(DioException exception) {
    final statusCode = exception.response?.statusCode;
    final responseData = exception.response?.data;

    String message;

    switch (statusCode) {
      case 400:
        message = 'Bad request';
        break;
      case 401:
        message = 'Unauthorized. Please login again.';
        break;
      case 403:
        message =
            'Forbidden. You don\'t have permission to access this resource.';
        break;
      case 404:
        message = 'The requested resource was not found.';
        break;
      case 500:
      case 501:
      case 502:
      case 503:
        message = 'Server error. Please try again later.';
        break;
      default:
        message = exception.message ?? 'Something went wrong';
    }

    // If the server returns a message, use that instead
    if (responseData is Map && responseData.containsKey('message')) {
      message = responseData['message'];
    }

    return ApiException(
      message: message,
      statusCode: statusCode,
      response: responseData,
    );
  }
}
