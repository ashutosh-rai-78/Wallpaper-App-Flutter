import 'package:flutter/material.dart';
import 'package:wallpaper_app/model/wallpaper_model.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Wallpaper",
        style: TextStyle(color: Colors.black87),
      ),
      Text("Hub", style: TextStyle(color: Colors.blue))
    ],
  );
}

Widget WallpaperList(List<WallpaperModel> wallpapers, context) {
  return Container(
    child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.6,
    ),
  );
}
