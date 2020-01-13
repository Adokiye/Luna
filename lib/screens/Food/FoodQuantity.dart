import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/buttons/scheduleButton.dart';
import '../../components/MeterBox/fixedMeterBox.dart';
import '../../components/MeterBox/foodMeterBox.dart';

class FoodQuantity extends StatefulWidget {
  FoodQuantity({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _FoodQuantityState createState() => _FoodQuantityState();
}

class _FoodQuantityState extends State<FoodQuantity> {
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
              title: new Image.asset('assets/images/logo.png', height: 60),
              elevation: 25.0,
              backgroundColor: const Color(0xff00ADEF),
              centerTitle: true,
            ),
          )),
      body: SafeArea(
          child: Center(
        child: Stack(children: <Widget>[
          SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      FoodMeterBox(title: 'AMALA', amount: 100,),
                      FoodMeterBox(title: 'MEAT', amount: 100,),
                      FixedMeterBox(title: 'EGUSI', amount: 200,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text('CALL 090182104 FOR SPECIAL ORDERS', style: TextStyle(color: const Color(0xff00adef), fontSize: 10.0),)
                      ),
                                                Container(
                                                  margin: EdgeInsets.symmetric(vertical: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            child: ScheduleButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/foodselection');
                                },
                                text: 'PROCEED'),
                          ),
                    ],
                  ))),
          //                                Positioned(
          // bottom: 0,  
          // child: InkWell(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: 45.0,
          //     color: const Color(0xff00ADEF),
          //   child:      Padding(
          //     padding: EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
          //     child:Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children:<Widget>[Text('Your Basket',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 20,
          //               )),
          //               Text('N4000',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 20,
          //               ))]),
          // ),
          // ))),
          Positioned(
            bottom: 10,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.90,
                child: BottomNavBar()),
          ),
        ]),
      )),
    );

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}

