import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){
            
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Logout')
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: screenHeight/2.25,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 40.0,
                  left: 30.0,
                  right: 30.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenHeight/3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.amberAccent,
                              ),
                              Text("data")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100.0,
            color: Colors.black,
          ),
          Container(
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            height: 100.0,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
