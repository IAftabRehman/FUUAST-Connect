import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  String _selectedFeature = '';
  String get selectedFeature => _selectedFeature;

  void selectFeature(String feature) {
    _selectedFeature = feature;
    notifyListeners();
  }

  void resetFeature() {
    _selectedFeature = '';
    notifyListeners();
  }
}
