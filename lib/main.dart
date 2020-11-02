import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:WallpaperHD/pages/pages.dart';
import 'package:WallpaperHD/routes/route.dart';
import 'package:WallpaperHD/views/splash_screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper HD',
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
      home: SplashScreenApp(),
    );
  }
}
