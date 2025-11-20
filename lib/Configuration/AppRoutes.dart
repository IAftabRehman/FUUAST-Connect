import 'package:flutter/cupertino.dart';
import 'package:fuuast_connect/Views/Presentation/CourseOrFacuiltyScreen.dart';
import 'package:fuuast_connect/Views/Presentation/HomeScreen.dart';
import 'package:fuuast_connect/Views/Presentation/MyProfileScreen.dart';
import 'package:fuuast_connect/Views/Presentation/TimeTableScreen.dart';
import '../Views/Presentation/CheckExamScreen.dart';
import '../Views/Presentation/SplashScreen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String timeTable = '/timeTable';
  static const String courseOrFaculty = '/courseOrFaculty';
  static const String checkExam = '/checkExam';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    home: (context) => HomeScreen(),
    timeTable: (context) => TimeTableScreen(),
    courseOrFaculty: (context) => CourseOrFacultyScreen(),
    checkExam: (context) => CheckExamScreen(),
    profile: (context) => MyProfileScreen(),
  };
}