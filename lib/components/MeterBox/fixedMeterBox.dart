import 'package:flutter/material.dart';

class FixedMeterBox extends StatelessWidget {
  final String title;
  final double amount;
  FixedMeterBox(
      {@required this.title,
      @required this.amount});

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width * 0.90,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 73.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 4.0,
              offset: Offset(0.0, 2.0))
        ], color: Colors.white),
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
          child: (Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),
              Text(amount.toString(), style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),),
            ],
          )),
        )));
  }
}

