import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/AppBar/appBar.dart';
import '../../components/OrderBox/orderBox.dart';
import '../../screens/orderProgress.dart';

class TrackDispatchOrder extends StatefulWidget {
  TrackDispatchOrder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TrackDispatchOrderState createState() => _TrackDispatchOrderState();
}

class _TrackDispatchOrderState extends State<TrackDispatchOrder> {
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

                       OrderBox(text: 'dispatchServices', id: '#LN/VC04A', percent: 0.8, date: '12, Jan 2019', amount: 1500),
                       OrderBox(text: 'dispatchServices', id: '#LN/DD04B', percent: 0.1, date: '01, Dec 2019', amount: 3000),
                       OrderBox(text: 'dispatchServices', id: '#LN/12042', percent: 0.8, date: '12, Jan 2020', amount: 2000),
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
