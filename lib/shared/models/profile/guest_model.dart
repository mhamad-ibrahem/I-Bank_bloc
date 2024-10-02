

import '../../../core/helpers/log_helper/log_helper.dart';

class GuestModel {
  GuestModel({
    required this.id,
    required this.arabicName,
    required this.englishName,
    required this.mobile,
    required this.email,
     this.password,
    required this.dateOfBirthday,
    required this.gender,
    required this.emirate,
    required this.nationId,
     this.userId,
  });
   final int id;
   final String arabicName;
   final String englishName;
   final String mobile;
   final String email;
   final String? password;
   final String dateOfBirthday;
   final String gender;
   final String? emirate;
   final int nationId;
   final String? userId;

  Map<String, dynamic> toJson(String? userResponseId) {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['arabicName'] = arabicName;
    data['englishName'] = englishName;
    data['mobile'] = mobile;
    data['email'] = email;
   if(password!=null) data['password'] = password;
    data['dateOfBirthday'] = dateOfBirthday;
    data['gender'] = gender;
    data['emirate'] = emirate;
    data['nationId'] = nationId;
    data['userId'] = userResponseId;
    LogHelper.logMagenta("guest model is $data");
    return data;
  }
}
