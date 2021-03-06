import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:WallpaperHD/controller/search_controller.dart';
import 'package:WallpaperHD/widgets/brand.dart';
import 'package:WallpaperHD/widgets/search.dart';
import 'package:WallpaperHD/widgets/wallpaper_grid.dart';

class SearchPage extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Brand(),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Search(),
              SizedBox(height: 16),
              GetBuilder<SearchController>(
                init: SearchController(),
                builder: (_) => WallpaperGrid(
                  items: _.searchWallpapers,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
