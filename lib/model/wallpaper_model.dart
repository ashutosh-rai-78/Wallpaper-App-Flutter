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
      photographer: jsonData['photographer'],
      photographerUrl: jsonData['photographer_url'],
      photographerId: jsonData['photographer_id'],
      src: SrcModel.fromMap(jsonData['src']),
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
  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      origial: jsonData['original'],
      small: jsonData['small'],
      portrait: jsonData['portrait'],
    );
  }
}
