
import 'package:bwa_airplane/ui/pages/Bonus_Page.dart';
import 'package:bwa_airplane/ui/pages/Details_Page.dart';
import 'package:bwa_airplane/ui/pages/GetStarted_Page.dart';
import 'package:bwa_airplane/ui/pages/Main_Page.dart';
import 'package:bwa_airplane/ui/pages/SignUp_page.dart';
import 'package:bwa_airplane/ui/pages/Splash_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Airplane',
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
