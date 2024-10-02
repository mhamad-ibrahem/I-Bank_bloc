
class ImageUploadModel {
  final String fileName;
  final String extension;
  final String data;

  ImageUploadModel({
    required this.fileName,
    required this.extension,
    required this.data,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonMap = {
      "fileName": fileName,
      "extension": extension,
      "uploadType": 8,
      "data": data
    };

    return jsonMap;
  }
}
