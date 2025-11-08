import 'dart:async';

import 'package:flutter/cupertino.dart';

class SplashProvider with ChangeNotifier{
  double _logoWidth = 0;
  double _logoHeight = 0;
  bool _showText = false;
  bool _animated = false;
  double get logoWidth => _logoWidth;
  double get logoHeight => _logoHeight;
  bool get animated => _animated;
  bool get showText => _showText;

  SplashProvider() {
    _startTimer();
  }

  void _startTimer() {
    Timer(Duration(milliseconds: 2), () {
      _runAnimation();
    });
  }

  _runAnimation() {
    _logoWidth = 200;
    _logoHeight = 200;
    _animated = true;
    _showText = true;
    notifyListeners();
  }

  void moveToHome(BuildContext context) {
    Timer(Duration(seconds: 1000), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }
}