class WallpaperModel {
  String? photographer;
  String? photographerUrl;
  int? photographerId;
  SrcModel? src;
  WallpaperModel({
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    this.src,
  });
  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
      photographer: jsonData['src'],
      photographerUrl: jsonData['src'],
      photographerId: jsonData['src'],
      src: jsonData['src'],
    );
  }
}

class SrcModel {
  String? origial;
  String? small;
  String? portrait;
  SrcModel({
    this.origial,
    this.small,
    this.portrait,
  });
}
