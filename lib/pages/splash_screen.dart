import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simple_app/pages/calculator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), 
          ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Calculator())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          "assets/AN-Logo.png"
        )
      ),
    );
  }
}