import 'package:flutter/material.dart';
import 'package:fuuast_connect/Configuration/AppRoutes.dart';
import 'package:fuuast_connect/Providers/HomeProvider.dart';
import 'package:provider/provider.dart';
import 'package:fuuast_connect/Providers/SplashProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Provider Files
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/',
        routes: AppRoutes.routes,
      ),
    );
  }
}
