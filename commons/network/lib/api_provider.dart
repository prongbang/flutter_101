import 'package:core/app_config.dart';
import 'package:dio/dio.dart';
import 'package:network/interceptor/default_interceptor.dart';

abstract class ApiProvider {
  Dio create();
}

class ApiClientProvider implements ApiProvider {
  final DefaultInterceptor apiDefaultInterceptor;
  final AppConfig appConfig;

  ApiClientProvider(this.apiDefaultInterceptor, this.appConfig);

  @override
  Dio create() {
    final int seconds = 30;
    var options = BaseOptions(
      receiveTimeout: 1000 * seconds,
      connectTimeout: 1000 * seconds,
      sendTimeout: 1000 * seconds,
      baseUrl: appConfig.baseURL,
    );

    var dio = Dio(options);
    dio.interceptors
      ..add(LogInterceptor(responseBody: true))
      ..add(apiDefaultInterceptor);

    return dio;
  }
}
