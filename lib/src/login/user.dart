import 'package:get_storage/get_storage.dart';

class User {
  User({
    this.username = '',
    this.password = '',
  });

  final box = GetStorage();
  String username;
  String password;

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"] ?? '',
        password: json["password"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };

  bool login() {
    return (username == 'admin' && password == '1234');
  }

  Future<void> save() {
    return box.write('user', toJson());
  }

  Future<User?> get() async {
    final user = box.read('user');
    if (user != null) {
      return User.fromJson(user);
    }
    return null;
  }

  Future<void> logout() {
    return box.erase();
  }
}
