import 'dart:convert';

class LoginParam {
  final String userName;
  final String password;

  LoginParam({required this.userName, required this.password});

  //TODO: Json toMap ve fromMap metodları düzenlenecek.
  //TODO: API geldiğinde isimlendirmeler düzenlecenek.
  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'password': password,
    };
  }

  factory LoginParam.fromMap(Map<String, dynamic> map) {
    return LoginParam(
      userName: map['userName'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginParam.fromJson(String source) => LoginParam.fromMap(json.decode(source));
}
