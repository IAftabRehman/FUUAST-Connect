import 'package:flutter/cupertino.dart';
import 'package:fuuast_connect/Views/Presentation/HomeScreen.dart';
import 'package:fuuast_connect/Views/Presentation/TimeTableScreen.dart';
import '../Views/Presentation/SplashScreen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String timeTable = '/timeTable';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    home: (context) => HomeScreen(),
    timeTable: (context) => TimeTableScreen(),
  };
}