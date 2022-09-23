import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController{
  @override
  void onReady(){
    uploadData();
    super.onReady();
  }

  Future<void> uploadData() async {
   final manifestContent = await DefaultAssetBundle.of(Get.context!).loadString("AssetManifest.json");
   final Map<String, dynamic> manifestMap =  json.decode(manifestContent);
   //load json file and print path
   final papersInAssets = manifestMap.keys
       .where((path) =>
          path.startsWith('assets/DB/paper')&&path.contains(".json"))
       .toList();
   for(var paper in papersInAssets) {
    String stringPaperContent = await rootBundle.loadString(paper);
    print(stringPaperContent);
   }
  }
}