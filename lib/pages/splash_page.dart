import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lesson_9_10/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void openPage() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  void initState() {
    super.initState();
    openPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Stack(
          children: [
            Center(
              child: Image(
                height: 80,
                width: 80,
                image: AssetImage("assets/images/ic_logo.png"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("From Facebook", style: TextStyle(fontSize: 20, color: Colors.black87),),
            )
          ],
        ),
      ),
    );
  }
}
