import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/laundry/schedule.dart';
import 'screens/laundry/enterDetails.dart';
import 'screens/laundry/clothTypes.dart';
import 'screens/paymentMethod.dart';

void main() => runApp(MyApp());

//const color = const Color(0xff00ADEF);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luna',
      theme: ThemeData(fontFamily: 'Rubik'),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(title: 'Luna'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/schedule': (context) => Schedule(),
         '/enterDetails': (context) => EnterDetails(),
          '/clothTypes': (context) => ClothTypes(),
          '/pay': (context) => PaymentMethod(),
      },
      //    home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
