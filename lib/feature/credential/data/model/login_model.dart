import 'dart:convert';

import 'package:bixos_project/feature/credential/domain/entity/login.dart';

class LoginModel extends Login {
  LoginModel({required bool isLogin}) : super(isLogin: isLogin);

  Map<String, dynamic> toMap() {
    return {
      'isLogin': isLogin,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      isLogin: map['isLogin'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) => LoginModel.fromMap(json.decode(source));

}
