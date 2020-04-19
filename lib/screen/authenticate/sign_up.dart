import 'package:bolpis/services/auth.dart';
import 'package:bolpis/shared/constant.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {

  final Function toogleView;
  SignUp({ this.toogleView });

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
//      appBar: AppBar(
//        backgroundColor: Colors.amber[400],
//        elevation: 0.0,
//        title: Text("Sign Up to Nabil Bolpis"),
//      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 70.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                              "Sign Up Page",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                          Text(
                            "Bolpis Report",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .2),
                          blurRadius: 20.0,
                          offset: Offset(0,10),
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: boxInputDecoration,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            validator: (val) => val.isEmpty ? "Enter the email" : null,
                            onChanged: (val){
                              setState(() => email = val);
                            },
                            decoration: textInputDecoration
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: boxInputDecoration,
                          child: TextFormField(
                            validator: (val) => val.isEmpty ? "Enter the password" : null,
                            onChanged: (val){
                              setState(() => password = val);
                            },
                            decoration: textInputDecoration,
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Sign Up"),
                      SizedBox(width: 3.0),
                      GestureDetector(
                        onTap: (){
                          widget.toogleView();
                        },
                        child: Text(
                            "Here",
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  RaisedButton(
                    color: Colors.greenAccent[200],
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()){
                        dynamic result = await _auth.signUpEmailPass(email, password);
                        if (result==null){
                          setState(() => error = 'please supply a vaalid email');
                        }
                      }
                    },
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    error,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
