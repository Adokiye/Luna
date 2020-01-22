import 'package:flutter/material.dart';
import '../components/BottomNavbar/bottomnavbar.dart';
import '../components/AppBar/appBar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OrderProgress extends StatefulWidget {
  OrderProgress({Key key, this.title, this.percent}) : super(key: key);

  final String title;
  final double percent;

  @override
  _OrderProgressState createState() => _OrderProgressState();
}

class _OrderProgressState extends State<OrderProgress> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
   double new_percent  = widget.percent * 100;
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
              Center(
                  child: Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.02),
                        child: Text('Track your Order',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700
                            )),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: new CircularPercentIndicator(
                            radius: MediaQuery.of(context).size.width * (0.60),
                            lineWidth: 10.0,
                            percent: widget.percent,
                            //            header: new Text("Icon header"),
                            center: Text(new_percent.toString()+'%',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: const Color(0xff444444))),
                            backgroundColor: const Color(0xffc4c4c4),
                            reverse: true,
                            progressColor: const Color(0xff00adef),
                            circularStrokeCap: CircularStrokeCap.square,
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: Text('Tracking number ' + widget.title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ))),
                    ],
                  ),
                ),
              )),
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
