import 'package:bolpis/screen/authenticate/sign_in.dart';
import 'package:bolpis/screen/authenticate/sign_up.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toogleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn){
      return SignIn(toogleView: toogleView);
    }
    else{
      return SignUp(toogleView: toogleView);
    }
  }
}
