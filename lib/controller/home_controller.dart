import 'dart:convert';
import 'package:get/get.dart';
import 'package:WallpaperHD/data/categories_data.dart';
import 'package:WallpaperHD/models/categories_model.dart';
import 'package:http/http.dart' as http;
import 'package:WallpaperHD/models/wallpaper_model.dart';
import 'package:WallpaperHD/utils/constants.dart';

class HomeController extends GetxController {
  final List<CategoriesModel> _categories = CATEGORIES_DATA;
  List<CategoriesModel> get categories => _categories;

  final List<WallpaperModel> _wallpapers = [];
  List<WallpaperModel> get wallpapers => _wallpapers;

  String _moreImage = '';
  String get moreImage => _moreImage;
  String _baseUrl =
      'https://api.pexels.com/v1/curated/?page=1\u0026per_page=11';
  String get baseUrl => _baseUrl;

  onInit() {
    getWallPapers(baseUrl);
    super.onInit();
  }

  Future getWallPapers(String url) async {
    var response = await http.get(url, headers: {
      'Authorization': Constants.API_KEY,
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      data['photos'].forEach((element) {
        _wallpapers.add(WallpaperModel(
          largeUrl: element['src']['original'],
          mediumUrl: element['src']['portrait'],
        ));
      });
      update();
      setPage(data["next_page"]);
    } else {
      print('error');
    }
  }

  setPage(String nextUrl) {
    _moreImage = nextUrl;
    update();
  }
}
