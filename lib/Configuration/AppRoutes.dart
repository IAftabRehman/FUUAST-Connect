import 'package:flutter/cupertino.dart';
import 'package:fuuast_connect/Views/Presentation/HomeScreen.dart';
import '../Views/Presentation/SplashScreen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    home: (context) => HomeScreen(),
  };
}