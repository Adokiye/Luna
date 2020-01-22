import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../screens/orderProgress.dart';

class OrderBox extends StatelessWidget {
  final String text;
  final String id;
  final double percent;
  final int amount;
  final String date;
  OrderBox({@required this.text, @required this.id, @required this.percent, @required this.amount, @required this.date});

  Widget _buildChild() {
    if (text == 'laundry') {
      return Image.asset(
        'assets/images/laundry.png',
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
    } else if (text == 'houseCleaning') {
      return Image.asset(
        'assets/images/houseCleaning.png',
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
    } else if (text == 'foodDelivery') {
      return Image.asset(
        'assets/images/foodDelivery.png',
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
    } else if (text == 'homeSalon') {
      return Image.asset(
        'assets/images/homeSalon.png',
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
    } else if (text == 'dispatchServices') {
      return Image.asset(
        'assets/images/dispatchServices.png',
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
    } else if (text == 'postConstruction') {
      return Image.asset(
        'assets/images/postConstruction.png',
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderProgress(
                      title: id, percent: percent,
                    ),
                  ));
            },
            child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.20),
                            blurRadius: 4.0,
                            offset: Offset(0.0, 2.0))
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new CircularPercentIndicator(
                              radius: 45.0,
                              lineWidth: 2.0,
                              percent: percent,
                              //            header: new Text("Icon header"),
                              center: _buildChild(),
                              backgroundColor: const Color(0xffc4c4c4),
                              progressColor: const Color(0xff00adef),
                              circularStrokeCap: CircularStrokeCap.square,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Tracking ID: ' + id,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ),
                                Text(
                                  'Order Confirmed',
                                  style: TextStyle(
                                      color: const Color(0xff00adef),
                                      fontSize: 12),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '\u{20A6}' + amount.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                                Text(
                                  date,
                                  style: TextStyle(
                                      color: const Color(0xffc4c4c4),
                                      fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ))))));
  }
}
