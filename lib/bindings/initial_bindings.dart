
import 'package:firebase_crud/controllers/auth_controller.dart';
import 'package:firebase_crud/controllers/theme_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies(){
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
  }
}

