import 'dart:io';

import 'package:core/exception/client_error_exception.dart';
import 'package:core/exception/no_content_exception.dart';
import 'package:core/exception/remote_exception.dart';
import 'package:core/exception/server_error_exception.dart';
import 'package:core/exception/unauthorization_exception.dart';
import 'package:dio/dio.dart';

Future<T> safeApiCall<T>(Future<Response> Function() call) async {
  try {
    final response = await call();
    final statusCode = response.statusCode;
    if (statusCode != null) {
      if (statusCode >= HttpStatus.ok && statusCode <= 299) {
        if (response.data != null) {
          return response.data;
        } else {
          throw NoContentException();
        }
      } else if (statusCode == HttpStatus.unauthorized) {
        throw UnAuthorizationException();
      } else if (statusCode >= HttpStatus.badRequest && statusCode <= 499) {
        throw ClientErrorException(response.statusMessage ?? 'Bad Request');
      } else if (statusCode >= HttpStatus.internalServerError &&
          statusCode <= 599) {
        throw ServerErrorException(
          response.statusMessage ?? 'Internal Server Error',
        );
      } else {
        throw RemoteException(response.statusMessage ?? 'Remote Exception');
      }
    } else {
      throw NoContentException();
    }
  } catch (e) {
    throw e;
  }
}
