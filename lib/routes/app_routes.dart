import 'package:firebase_crud/screens/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/introduction/introduction.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: "/introduction", page: () => AppIntroductionScreen())
      ];
}
