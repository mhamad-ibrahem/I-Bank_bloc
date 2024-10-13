import 'package:flutter/material.dart';

class ForgetPasswordModel {
  final String phoneNumber;
  final String? verifyCode;
  final BuildContext context;
  final VoidCallback? codeSentCallBack;
  final String? verificationId;

  ForgetPasswordModel(
      {required this.phoneNumber,
      this.verifyCode,
      required this.context,
      this.codeSentCallBack,
      this.verificationId});
  Map<String, dynamic> toJson() {
    return {
      "phoneNumber": phoneNumber,
      if (verifyCode != null) 'password': verifyCode,
    };
  }
}
