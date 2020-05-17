import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tgs8/post_result_model.dart';
import 'package:tgs8/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Revi Tri A - 20170801297"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? user.id +
                  " | " +
                  user.name
              : "Tidak ada Data", style: TextStyle(fontSize: 20, fontFamily: "Gabriola", fontFeatures: [
                FontFeature.oldstyleFigures()
              ]),
              ),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI("2").then((value){
                    user= value;
                    setState(() {

                    });
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      )
    );
  }
}
