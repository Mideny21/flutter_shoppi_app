import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/api_service_wrapper.dart';
import 'package:shoppi/core/network/dio_client.dart';
import 'package:shoppi/core/utils/app_logger.dart';

@injectable
class NetworkService {
  final DioClient _dioClient;

  NetworkService(this._dioClient);

  /// Performs a GET request and returns ApiResult
  Future<ApiResult<Response>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (queryParameters != null) {
      log.d('Query parameters: $queryParameters');
    }

    return ApiServiceWrapper.execute(
      apiCall:
          () => _dioClient.dio.get(
            path,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress,
          ),
    );
  }

  /// Performs a POST request and returns ApiResult
  Future<ApiResult<Response>> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    log.d('Post data: $data');
    return ApiServiceWrapper.execute(
      apiCall:
          () => _dioClient.dio.post(
            path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          ),
    );
  }

  /// Performs a PUT request and returns ApiResult
  Future<ApiResult<Response>> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return ApiServiceWrapper.execute(
      apiCall:
          () => _dioClient.dio.put(
            path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          ),
    );
  }

  /// Performs a PATCH request and returns ApiResult
  Future<ApiResult<Response>> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return ApiServiceWrapper.execute(
      apiCall:
          () => _dioClient.dio.patch(
            path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          ),
    );
  }

  /// Performs a DELETE request and returns ApiResult
  Future<ApiResult<Response>> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return ApiServiceWrapper.execute(
      apiCall:
          () => _dioClient.dio.delete(
            path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
          ),
    );
  }
}
