import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simple_app/pages/calculator.dart';
import 'package:simple_app/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD04A),
      body: Container(
          alignment: Alignment.center, child: Image.asset("assets/logo.png")),
    );
  }
}
