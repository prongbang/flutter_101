import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:network/api_provider.dart';
import 'package:network/interceptor/default_interceptor.dart';

class NetworkLocator {
  static setup() {
    GetIt.I.registerFactory<ApiProvider>(
        () => ApiClientProvider(GetIt.I.get(), GetIt.I.get()));
    GetIt.I.registerFactory<DefaultInterceptor>(() => ApiDefaultInterceptor());
    GetIt.I.registerFactory<Dio>(() => GetIt.I.get<ApiProvider>().create());
  }
}
