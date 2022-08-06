import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class ImageView extends StatefulWidget {
  final String imageUrl;
  const ImageView({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  var filePath;

  /* _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imageUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    _save();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                        border: null,
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black87),
                    child: Column(
                      children: [
                        Text(
                          "Set Wallpaper",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "Image will be saved in gallery",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> setWallpaper() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageUrl);
    String result =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
  }

  _save() async {
    await _askPermission();
    var response = await Dio().get(widget.imageUrl,
        options: Options(responseType: ResponseType.bytes));
    final result =
        await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
    int location = WallpaperManager.HOME_SCREEN;
    await WallpaperManager.setWallpaperFromFile(result, location);
    print(result +
        "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    Navigator.pop(context);
  }

  _askPermission() async {
    if (Platform.isIOS) {
      /*Map<PermissionGroup, PermissionStatus> permissions =
          */
      await PermissionHandler().requestPermissions([PermissionGroup.photos]);
    } else {
      /* PermissionStatus permission = */ await PermissionHandler()
          .checkPermissionStatus(PermissionGroup.storage);
    }
  }
}
