import 'package:firebase_crud/controllers/question_paper/data_uploader.dart';
import 'package:firebase_crud/firebase_ref/loading_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUploaderScreen extends StatelessWidget {
  DataUploaderScreen({Key? key}) : super(key: key);
  DataUploader controller = Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
            controller.loadingStatus.value == LoadingStatus.completed
                ? "Load complete!"
                : "Loading...")),
      ),
    );
  }
}
