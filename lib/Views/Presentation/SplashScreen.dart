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

  /// Splash Screen Logic
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SplashProvider>(context, listen: false).moveToHome(context);
    });
  }

  @override
  Widget build(BuildContext context) {

    /// Provider File
    final provider = context.watch<SplashProvider>();

    return Scaffold(

      /// Background Color
      backgroundColor: Colors.white,

      /// Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          /// Image Widget (FUUAST Logo)
          Center(
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: provider.logoHeight,
              width: provider.logoWidth,
              child: Image.asset('assets/fuuastLogo.png', fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 30),

          /// Bottom Text
          AnimatedOpacity(
            opacity: provider.showText ? 1.0 : 0.0,
            duration: const Duration(seconds: 2),
            curve: Curves.easeInBack,
            child: MyText(
              text: "The\nFUUASTIANS",
              size: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
