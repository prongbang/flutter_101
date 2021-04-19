import 'package:core/exception/client_error_exception.dart';
import 'package:core/exception/no_content_exception.dart';
import 'package:core/exception/remote_exception.dart';
import 'package:core/exception/server_error_exception.dart';
import 'package:core/exception/unauthorization_exception.dart';
import 'package:dio/dio.dart';

T safeApiCall<T>(Response<T> response) {
  if (response.statusCode >= 200 && response.statusCode <= 299) {
    if (response.data != null) {
      return response.data;
    } else {
      throw NoContentException();
    }
  } else if (response.statusCode == 401) {
    throw UnAuthorizationException();
  } else if (response.statusCode >= 400 && response.statusCode <= 499) {
    throw ClientErrorException(response.statusMessage);
  } else if (response.statusCode >= 500 && response.statusCode <= 599) {
    throw ServerErrorException(response.statusMessage);
  } else {
    throw RemoteException(response.statusMessage);
  }
}
