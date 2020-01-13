import 'package:flutter/material.dart';
import 'dart:async';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => new _SuccessState();
}

class _SuccessState extends State<Success> {
   @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 5), onClose);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: const Color(0xff00ADEF),
            child: SafeArea(
                child: Center(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                    child: new Image.asset(
                  'assets/images/checkBlue.png',
                  height: 95,
                  width: 95,
                  fit: BoxFit.contain,
                )),
                Text('Success', style: TextStyle(fontSize: 30.0, color: Colors.white ),),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0),
                                  child: Text('your tracking ID:#1123', style: TextStyle(fontSize: 30.0, color: Colors.white ),),)
              ],
            )))));
  }
      void onClose() {
     Navigator.pushReplacementNamed(context, '/home');
  }
}
