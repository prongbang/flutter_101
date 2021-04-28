import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class TestHttp {
  static void test() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    final response = await http.get(url);
    print(response.statusCode);
    print(response.body);

    final dio = Dio();
    final response2 =
        await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    print(response2.data);
    print(response2.headers);
    print(response2.statusCode);
  }
}
