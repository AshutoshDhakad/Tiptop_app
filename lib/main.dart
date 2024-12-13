import 'package:flutter/material.dart';
import 'package:tiptop_app/SplashScreen.dart';
import 'package:tiptop_app/onboarding1.dart';
import 'Loginpage.dart';
import 'onboarding2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: SplashScreen()

    );
  }
}