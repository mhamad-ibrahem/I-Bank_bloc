class LoginUserResponseModel {
  LoginUserResponseModel({
    required this.token,
    required this.refreshToken,
    required this.refreshTokenExpiryTime,
    required this.id,
    required this.clientId,
    required this.type,
    required this.status,
    required this.nameAr,
    required this.nameEn,
    required this.fcmToken,
    required this.topic,
  });
  final String token;
  final String refreshToken;
  final String refreshTokenExpiryTime;
  final int id;
  final int clientId;
  final String type;
  final String status;
  final String nameAr;
  final String nameEn;
  final String? fcmToken;
  final String? topic;

  factory LoginUserResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginUserResponseModel(
        token: json['token'],
        refreshToken: json['refreshToken'],
        refreshTokenExpiryTime: json['refreshTokenExpiryTime'],
        id: json['id'],
        clientId: json['clientId'],
        type: json['type'],
        status: json['status'],
        nameAr: json['nameAr'],
        nameEn: json['nameEn'],
        fcmToken: json['fcm_token'],
        topic: json['topic']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
   data['token'] = token;
   data['refreshToken'] = refreshToken;
   data['refreshTokenExpiryTime'] = refreshTokenExpiryTime;
   data['id'] = id;
   data['clientId'] = clientId;
   data['type'] = type;
   data['status'] = status;
   data['nameAr'] = nameAr;
   data['nameEn'] = nameEn;
   data['fcm_token'] = fcmToken;
   data['topic'] = topic;
    return data;
  }
}
