import 'package:firebase_crud/bindings/initial_bindings.dart';
import 'package:firebase_crud/data_uploader_screen.dart';
import 'package:firebase_crud/routes/app_routes.dart';
import 'package:firebase_crud/screens/HomeScreen.dart';
import 'package:firebase_crud/screens/introduction/introduction.dart';
import 'package:firebase_crud/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     getPages: AppRoutes.routes()
    );
  }
}


// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(home: DataUploaderScreen()));
// }



