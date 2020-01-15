import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/buttons/scheduleButton.dart';
import '../../components/MeterBox/fixedMeterBox.dart';
import '../../components/MeterBox/totalAmountMeterBox.dart';
import '../../components/AppBar/appBar.dart';

class FoodSelection extends StatefulWidget {
  FoodSelection({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _FoodSelectionState createState() => _FoodSelectionState();
}

class _FoodSelectionState extends State<FoodSelection> {
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
          child: Center(
        child: Stack(children: <Widget>[
          SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      TotalAmountMeterBox(subTotal: 800, delivery: 300),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 154.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4.0,
                                    offset: Offset(0.0, 4.0))
                              ],
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Center(
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Amala (2 wraps)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '400',
                                        style: TextStyle(
                                          color: const Color(0xff00adef),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                                                         crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Egusi(1 Plate)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '200',
                                        style: TextStyle(
                                          color: const Color(0xff00adef),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                                                         crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Pomo(3 pieces)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '200',
                                        style: TextStyle(
                                          color: const Color(0xff00adef),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          )))
                    ],
                  ))),
          Positioned(
              bottom: 0,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/pay');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width* 1,
                    height: 45.0,
                    color: const Color(0xff00ADEF),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Checkout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            Text('N1100',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))
                          ]),
                    ),
                  ))),
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
