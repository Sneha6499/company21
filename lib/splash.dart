import 'dart:async';
import 'package:flutter/material.dart';
import 'first.dart';
import 'jobdetails.dart';


class Splash extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}
class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>First()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/Splash.png"), fit: BoxFit.cover),
      ),

    );
  }
}