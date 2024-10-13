import 'package:flutter/material.dart';

class LoginModel {
  final String email;
  final String password;
  final BuildContext context;

  LoginModel( {required this.email, required this.password,required this.context});
  Map<String, dynamic> toJson() {
    return {
      "email": email,
      'password': password,
    };
  }
}
