import 'package:flutter/material.dart';

class HeaderBox extends StatelessWidget {
  final String text;
  HeaderBox({@required this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
    width: MediaQuery.of(context).size.width * 0.90,
    margin: EdgeInsets.symmetric(vertical: 10.0),
    height: 76.53,
    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 4.0,
                          offset: Offset(0.0, 2.0))
                    ],color: Colors.white,),
    child: Center(child: Text(text, style: TextStyle(fontSize: 14.0, color: Colors.black),))                
    );
  }
}
