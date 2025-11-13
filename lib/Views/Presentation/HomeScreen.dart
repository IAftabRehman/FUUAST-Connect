import 'package:flutter/material.dart';
import 'package:fuuast_connect/Configuration/AppRoutes.dart';
import 'package:fuuast_connect/Configuration/AppColors.dart';
import 'package:fuuast_connect/Views/Elements/CustomContainer.dart';
import 'package:fuuast_connect/Views/Elements/CustomText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: MyText(
          text: "Fuuastian's",
          fontWeight: FontWeight.bold,
          size: 25,
          color: AppColors.backgroundColor,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(10),
              children: [
                features(context, "Time Table", Icons.today_outlined, () {
                  Navigator.pushNamed(context, AppRoutes.timeTable);
                }),
                features(context, "Check Exam Details", Icons.quiz, () {}),
              ],
            )
          )
    );
  }

  MyContainer features(
    BuildContext context,
    String name,
    IconData icon,
    GestureTapCallback onTap,
  ) {
    return MyContainer(
      onTap: onTap,
      color: Colors.black12,
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconContainer(
            iconData: icon,
            iconHeight: 50,
            iconColor: AppColors.primaryColor,
          ),
          const SizedBox(height: 10),
          MyText(
            text: name,
            size: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            textAlign: TextAlign.center,
            textOverflow: TextOverflow.visible
          ),
        ],
      ),
    );
  }
}
