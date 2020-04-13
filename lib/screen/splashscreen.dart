import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navPage() => Navigator.of(context).pushReplacementNamed('/main');

  startTime() async {
    var dur = new Duration(seconds: 2);
    return new Timer(dur, navPage);
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("splash screen"),
      ),
    );
  }
}
