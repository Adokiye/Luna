import 'package:flutter/material.dart';

class AppBarComponent extends StatefulWidget {
  @override
  _AppBarComponentState createState() => new _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {


  @override
  Widget build(BuildContext context) {
    return  Material(
                      color: const Color(0xff00adef),
                      child: new InkWell(
                                                onTap: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: Container(
                          child: new Image.asset('assets/images/logo.png', height: 60)
                        )),
                    ) ;
  }
}
