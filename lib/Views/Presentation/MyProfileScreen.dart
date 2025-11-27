import 'package:flutter/material.dart';

import '../../Configuration/AppColors.dart';
import '../Elements/CustomText.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// Appbar
      appBar: AppBar(
        title: MyText(
          text: "Who is Aftab",
          fontWeight: FontWeight.bold,
          size: 25,
          color: AppColors.backgroundColor,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: AppColors.backgroundColor),
        ),
      ),
    );
  }
}
