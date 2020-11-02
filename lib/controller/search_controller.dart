import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:WallpaperHD/models/wallpaper_model.dart';
import 'package:WallpaperHD/utils/constants.dart';

class SearchController extends GetxController {
  final List<WallpaperModel> _searchWallpapers = [];
  List<WallpaperModel> get searchWallpapers => _searchWallpapers;

  TextEditingController searchController = TextEditingController();

  Future searchWallPapers(String query) async {
    _searchWallpapers.clear();
    var response = await http
        .get('https://api.pexels.com/v1/search?query=$query&per_page=200&page=1', headers: {
      'Authorization': Constants.API_KEY,
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      data['photos'].forEach((element) {
        _searchWallpapers.add(
          WallpaperModel(
            largeUrl: element['src']['large'],
            mediumUrl: element['src']['medium'],
          ),
        );
      });
      update();
    } else {
      print('error');
    }
  }
}