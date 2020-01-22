import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/AppBar/appBar.dart';
import '../../components/OrderBox/orderBox.dart';
import '../../screens/orderProgress.dart';

class TrackOrder extends StatefulWidget {
  TrackOrder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), // here the desired height
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: AppBar(
                title: AppBarComponent(),
                elevation: 25.0,
                backgroundColor: const Color(0xff00ADEF),
                centerTitle: true,
              ),
            )),
        body: SafeArea(
            child: Stack(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                       OrderBox(text: 'laundry', id: '#LN/2304A', percent: 0.8, date: '12, Jan 2019', amount: 1500),
                       OrderBox(text: 'laundry', id: '#LN/1104B', percent: 0.2, date: '01, Dec 2019', amount: 500),
                       OrderBox(text: 'laundry', id: '#LN/00042', percent: 0.5, date: '12, Jan 2020', amount: 2000),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: BottomNavBar()),
              ),
            ])));

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}
