import 'dart:async';
import 'package:bolpis/models/user.dart';
import 'package:bolpis/screen/wrapper.dart';
import 'package:bolpis/services/auth.dart';
import 'package:bolpis/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() { 
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration =  const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return StreamProvider<User>.value(
            value: AuthService().user,
            child: Wrapper()
          );
        })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingScreen(),
    );
  }
}
