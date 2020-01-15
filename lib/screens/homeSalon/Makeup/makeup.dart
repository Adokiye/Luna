import 'package:flutter/material.dart';
import '../../../components/BottomNavbar/bottomnavbar.dart';
import '../../../components/HeaderBox/headerbox.dart';
import '../../../components/MeterBox/meterbox.dart';
import '../../../components/AppBar/appBar.dart';

class Makeup extends StatefulWidget {
  Makeup({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MakeupState createState() => _MakeupState();
}

class _MakeupState extends State<Makeup> {
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
              Center(
                child: Container(
                                margin: EdgeInsets.only(bottom: 60),
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      HeaderBox(text: 'Makeup'),
                      MeterBox(
                        amount: 500,
                        title: 'MAKEUP APPLICATION',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'MAKEUP WITH CONTOUR',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'MAKEUP WITH LASHES',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'AIRBRUSH MAKEUP',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'MAKEUP WITH CONTOUR AND LASHES',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'CLASSIC LASH EXTENSION FILL',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'FULL CLASSIC LASH EXTENSION FILL',
                        description: '',
                      ),
                      MeterBox(
                        amount: 500,
                        title: 'VOLUME LASH EXTENSION FILL',
                        description: '',
                      ),
                    ],
                  ),
                ),
               ) ),
              Positioned(
                  bottom: 0,
                  child: InkWell(
                    onTap: () {Navigator.pushNamed(context, '/pay');},
                      child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45.0,
                    color: const Color(0xff00ADEF),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('PROCEED',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            Text('N4000',
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
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: BottomNavBar()),
              ),
            ])));

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}
