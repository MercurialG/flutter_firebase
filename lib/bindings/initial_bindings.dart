
import 'package:firebase_crud/controllers/auth_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies(){
    Get.put(AuthController(), permanent: true);
  }
}

