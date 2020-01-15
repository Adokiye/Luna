import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 5), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
                  child: Stack(

                    children:<Widget>[ 
                      Center(
                        child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child:
                        new Image.asset(
                              'assets/images/logo.png',
                              height: 116,
                              width: 215,
                              fit: BoxFit.contain,
                            ),),                TypewriterAnimatedTextKit(
                    onTap: () {
                      print("More Time for You");
                    },
                    totalRepeatCount: 2,
                    text: [
                      "More Time for You",
                      "More Time for You",
                    ],
                    displayFullTextOnTap: true,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    )
              ],
            )),
                          Positioned(

                  bottom: 0,
                  child:  Container(
                          width: MediaQuery.of(context).size.width,
                          height: 116.0,
                          child: new Container(),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/bottomSplash.png'),
                              fit: BoxFit.cover,
                            ),
                     //      color: const Color(0xff00adef),
                         ),
                          )),
            
            ]),
        //    )
            
            )));
  }

  void onClose() {
    Navigator.pushReplacementNamed(context, '/home');
  }
}
