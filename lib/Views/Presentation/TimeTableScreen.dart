import 'package:flutter/material.dart';
import 'package:fuuast_connect/Views/Elements/CustomContainer.dart';

import '../../Configuration/AppColors.dart';
import '../Elements/CustomText.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({super.key});

  @override
  State<TimeTableScreen> createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: MyText(
          text: "Check TimeTable",
          fontWeight: FontWeight.bold,
          size: 22,
          color: AppColors.backgroundColor,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back, color: AppColors.backgroundColor)),
      ),
      body: Column(
        children: [
          MyContainer(
          )
        ],
      ),
    );
  }
}
