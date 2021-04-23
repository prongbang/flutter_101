import 'package:dio/dio.dart';

class DioHttpProvider {
  static getGoogleHtml() async {
    try {
      final dio = Dio();
      var response = await dio.get('http://www.google.com');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
