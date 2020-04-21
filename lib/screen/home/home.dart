import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Bolpis Report",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: screenHeight / 2.25,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.amberAccent,
                    height: screenHeight / 4.5,
                  ),
                  Positioned(
                    top: 40.0,
                    left: 50.0,
                    right: 50.0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .4),
                              blurRadius: 20.0,
                              offset: Offset(0, 0),
                            )
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          height: screenHeight / 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://3.bp.blogspot.com/-lWxZWQmPf8o/T937ooR6PqI/AAAAAAAAAHc/ss9jJqAKZyc/s1600/249724_225898124089503_3416480_n.jpg"),
                                        backgroundColor: Colors.grey,
                                        foregroundColor: Colors.amberAccent,
                                        radius: 30.0,
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Bagas Nabil",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24.0),
                                          ),
                                          SizedBox(height: 10.0),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.check_box,
                                                color: Colors.green,
                                              ),
                                              SizedBox(width: 10.0),
                                              Text(
                                                "Verified account",
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontSize: 18.0),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: (){},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.message,
                                                size: 40.0,
                                                color: Colors.amber,
                                                ),
                                              SizedBox(height: 20.0),
                                              Text(
                                                "Pesanan",
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.store,
                                                size: 40.0,
                                                color: Colors.amber,
                                                ),
                                              SizedBox(height: 20.0),
                                              Text(
                                                "Lapak",
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.content_paste,
                                                size: 40.0,
                                                color: Colors.amber,
                                                ),
                                              SizedBox(height: 20.0),
                                              Text(
                                                "Bahan",
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: 100.0,
            //   color: Colors.black26,
            //   child: Text(
            //     "dataaaaaaaaaaaaaaaaaaaaaa",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 100.0,
            //   color: Colors.black26,
            //   child: Text(
            //     "dataaaaaaaaaaaaaaaaaaaaaa",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 100.0,
            //   color: Colors.black26,
            //   child: Text(
            //     "dataaaaaaaaaaaaaaaaaaaaaa",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
