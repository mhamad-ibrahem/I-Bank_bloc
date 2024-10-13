class LocalUserData {
  String? token;
  String? refreshToken;
  String? id;
  String? nameEn;
  String? email;

  LocalUserData({
    required this.token,
    this.refreshToken,
    this.id,
    this.nameEn,
    required this.email,
  });

  factory LocalUserData.fromJson(Map<String, dynamic> json) {
    return LocalUserData(
        token: json['token'],
        refreshToken: json['refreshToken'],
        id: json['id'],
        nameEn: json['nameEn'],
        email: json['email'],);
  }
  LocalUserData copyWith({
    String? token,
    String? refreshToken,
    String? id,
    String? type,
    String? status,
    String? nameAr,
    String? nameEn,
    String? email,
    String? password,
    bool? isActive,
    bool? isSubscribedInSolidarityFund,
  }) {
    return LocalUserData(
        token: token ?? this.token,
        id: id ?? this.id,
        nameEn: nameEn ?? this.nameEn,
        refreshToken: refreshToken ?? this.refreshToken,
        email: email ?? this.email,);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['token'] = token;
    data['refreshToken'] = refreshToken;
    data['id'] = id;
    data['nameEn'] = nameEn;
    data['email'] = email;

    return data;
  }
}
