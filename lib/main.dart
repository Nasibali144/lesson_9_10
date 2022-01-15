import 'package:flutter/material.dart';
import 'package:lesson_9_10/pages/home_page.dart';
import 'package:lesson_9_10/pages/signin_page.dart';
import 'package:lesson_9_10/pages/signup_page.dart';
import 'package:lesson_9_10/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.white,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.blueAccent,
          titleTextStyle: TextStyle(color: Colors.white, fontFamily: "Billabong", fontSize: 30)
        )
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        SplashPage.id: (context) => SplashPage(),
        SignUpPage.id: (context) => SignUpPage(),
        SignInPage.id: (context) => SignInPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
