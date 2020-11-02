class WallpaperModel {
  String largeUrl;
  String mediumUrl;
  String url;
  String photographer;
  String photographer_url;
  int photographer_id;
  SrcModel src;

  WallpaperModel(
      {this.url,
        this.src,
        this.photographer,
        this.largeUrl,
        this.mediumUrl,
        this.photographer_id,
        this.photographer_url});
  factory WallpaperModel.fromMap(Map<String, dynamic>jsonData){
    return WallpaperModel(
        src: SrcModel.fromMap(jsonData["src"]),
        photographer_url: jsonData["photographer_url"],
        photographer_id: jsonData["photographer_id"],
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
