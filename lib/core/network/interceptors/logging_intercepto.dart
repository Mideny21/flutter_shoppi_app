import 'package:dio/dio.dart';
import 'package:shoppi/core/utils/app_logger.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log.i(
      'REQUEST[${options.method}] => PATH: ${options.baseUrl}${options.path} => DATA: ${options.data} => QUERY PARAMS: ${options.queryParameters} => AUTH: ${options.headers}',
    );

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log.i(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} => DATA: ${response.data}',
    );

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log.e(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.baseUrl}${err.requestOptions.path}',
    );
    log.e('Error Message: ${err.message}', err);
    if (err.response != null) {
      log.e('Error Response: ${err.response?.data}');
    }
    super.onError(err, handler);
  }
}
