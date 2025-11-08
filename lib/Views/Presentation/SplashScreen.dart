import 'package:flutter/material.dart';
import 'package:fuuast_connect/Configuration/AppColors.dart';
import 'package:fuuast_connect/Views/Elements/CustomText.dart';
import 'package:provider/provider.dart';

import '../../Providers/SplashProvider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SplashProvider>(context, listen: false).moveToHome(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SplashProvider>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 900),
              height: provider.logoHeight,
              width: provider.logoWidth,
              child: Image.asset('assets/images/Fuuast_Logo.png', fit: BoxFit.contain)),
            ),
          const SizedBox(height: 20),

          AnimatedAlign(
            alignment: provider.showText ? Alignment.topCenter : Alignment.bottomCenter,
            duration: Duration(seconds: 1),
            child: MyText(text: "FUUAST", size: 35, fontWeight: FontWeight.bold, color: AppColors.primaryColor,)
          )

        ],
      ),
    );
  }
}
