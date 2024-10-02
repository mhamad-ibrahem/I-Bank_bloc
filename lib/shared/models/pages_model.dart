class PagesModel {
  PagesModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.englishName,
      required this.englishDescription,
      required this.image,
      required this.menuType,
      this.geoLocation,
      required this.type,
      required this.isActive,
      required this.recordOrder,
      required this.menuId,
      required this.translations,
      required this.pagePhotos,
      required this.pageAttachements,
      required this.pageVideos,
      required this.showTranslation,
      required this.url,
      });
  final int id;
  final String name;
  final String? description;
  final String? englishName;
  final String? englishDescription;
  final String? image;
  final String? menuType;
  final dynamic geoLocation;
  final String? type;
  final bool? isActive;
  final int? recordOrder;
  final int? menuId;
  final List<dynamic> translations;
  final List<PagesImages> pagePhotos;
  final List<PagesImages> pageAttachements;
  final List<dynamic> pageVideos;
  final bool? showTranslation;
  final String? url;

  factory PagesModel.fromJson(Map<String, dynamic> json) {
    return PagesModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      englishName: json['englishName'],
      englishDescription: json['englishDescription'],
      image: json['image'],
      menuType: json['menuType'],
      geoLocation: json['geoLocation'],
      type: json['type'],
      isActive: json['isActive'],
      recordOrder: json['recordOrder'],
      menuId: json['menuId'],
      translations: List.castFrom<dynamic, dynamic>(json['translations']),
      pagePhotos: json["pagePhotos"] != null
          ? List<PagesImages>.from(
              json["pagePhotos"].map((x) => PagesImages.fromJson(x)))
          : [],
      pageAttachements: json["pageAttachements"] != null
          ? List<PagesImages>.from(
              json["pageAttachements"].map((x) => PagesImages.fromJson(x)))
          : [],
      pageVideos: List.castFrom<dynamic, dynamic>(json['pageVideos']),
      showTranslation: json['showTranslation'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['englishName'] = englishName;
    data['englishDescription'] = englishDescription;
    data['image'] = image;
    data['menuType'] = menuType;
    data['geoLocation'] = geoLocation;
    data['type'] = type;
    data['isActive'] = isActive;
    data['recordOrder'] = recordOrder;
    data['menuId'] = menuId;
    data['translations'] = translations;
    data['pagePhotos'] = pagePhotos;
    data['pageAttachements'] = pageAttachements;
    data['pageVideos'] = pageVideos;
    data['showTranslation'] = showTranslation;
    data['url'] = url;
    return data;
  }
}

class PagesImages {
  final int id;
  final String? file;
  final String? name;
  final int? pageId;
  final String? image;

  PagesImages(
      {required this.id,
      required this.file,
      required this.name,
      this.image,
      required this.pageId});
  factory PagesImages.fromJson(Map<String, dynamic> json) {
    return PagesImages(
        id: json['id'],
        file: json['file'],
        name: json['name'],
        image: json['image'],
        pageId: json['pageId']);
  }
}
