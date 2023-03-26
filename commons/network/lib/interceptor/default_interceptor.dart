import 'dart:async';
import 'dart:io';

import 'package:core/exception/no_network_exception.dart';
import 'package:dio/dio.dart';

abstract class DefaultInterceptor extends InterceptorsWrapper {}

class ApiDefaultInterceptor extends DefaultInterceptor {
  ApiDefaultInterceptor();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    print("REQUEST[${options?.method}] => PATH: ${options?.path}");

    if (options?.headers != null) {
      options.contentType = "application/json";
      options.headers..['Authorization'] = 'Bearer';
    }
    print(options.headers);

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        "RESPONSE[${response?.statusCode}] => PATH: ${response?.requestOptions?.path}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        "DefaultInterceptor ERROR[${err?.response?.statusCode}] => PATH: ${err?.requestOptions?.path}");
    switch (err.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        throw TimeoutException(err.message);
        break;
      default:
        if (err.error != null && err.error is SocketException) {
          throw NoNetworkException();
        }
        return super.onError(err, handler);
        break;
    }
  }
}
