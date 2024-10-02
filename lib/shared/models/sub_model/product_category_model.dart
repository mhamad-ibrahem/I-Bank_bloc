class ProductCategoryModel {
  ProductCategoryModel({
    required this.nameAr,
    required this.nameEn,
    this.descriptionAr,
    this.descriptionEn,
    this.parentCategoryId,
    this.imageDataURL,
     this.type,
    required this.id,
  });
  final String nameAr;
  final String nameEn;
  final String? descriptionAr;
  final String? descriptionEn;
  final int? parentCategoryId;
  final dynamic imageDataURL;
  final String? type;
  final int id;

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductCategoryModel(
        nameAr: json['nameAr'],
        nameEn: json['nameEn'],
        descriptionAr: json['descriptionAr'],
        descriptionEn: json['descriptionEn'],
        parentCategoryId: json['parentCategoryId'],
        imageDataURL: json['imageDataURL'],
        type: json['type'],
        id: json['id']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nameAr'] = nameAr;
    data['nameEn'] = nameEn;
    data['descriptionAr'] = descriptionAr;
    data['descriptionEn'] = descriptionEn;
    data['parentCategoryId'] = parentCategoryId;
    data['imageDataURL'] = imageDataURL;
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}
