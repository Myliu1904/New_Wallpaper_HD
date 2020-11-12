class WallpaperModel {
  String largeUrl;
  String mediumUrl;
  String url;
  String photographer;
  SrcModel src;

  WallpaperModel(
      {this.url,
        this.src,
        this.photographer,
        this.largeUrl,
        this.mediumUrl,});
  factory WallpaperModel.fromMap(Map<String, dynamic>jsonData){
    return WallpaperModel(
        src: SrcModel.fromMap(jsonData["src"]),
        largeUrl: jsonData["largeUrl"],
        photographer: jsonData["photographer"]
    );
  }
}
class SrcModel{
  String large;
  String original;
  String portrait;
  SrcModel({
    this.large,
    this.portrait,
    this.original,
  });

  factory SrcModel.fromMap(Map<String, dynamic> jsonData){
    return SrcModel(
      portrait: jsonData["portrait"],
      large: jsonData["large"],
      original: jsonData["original"],

    );
  }
}
