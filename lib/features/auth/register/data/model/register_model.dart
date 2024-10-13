import 'package:flutter/material.dart';

class RegisterModel {
  final String email;
  final String password;
  final BuildContext context;

  RegisterModel( {required this.email, required this.password,required this.context});
  Map<String, dynamic> toJson() {
    return {
      "email": email,
      'password': password,
    };
  }
}
