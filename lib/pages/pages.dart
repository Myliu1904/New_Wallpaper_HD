import 'package:get/get.dart';
import 'package:WallpaperHD/routes/route.dart';
import 'package:WallpaperHD/views/home_page.dart';
import 'package:WallpaperHD/views/imageView.dart';
import 'package:WallpaperHD/views/search_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => HomePage()),
    GetPage(name: Routes.SEARCH, page: () => SearchPage()),
    GetPage(name: Routes.IMAGEVIEW, page: () => ImageView()),
  ];
}
