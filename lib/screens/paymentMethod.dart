import 'package:flutter/material.dart';
import '../components/BottomNavbar/bottomnavbar.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
            child: Stack(
          children: <Widget>[
            SingleChildScrollView(
                child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Payment Method',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/success');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      width: MediaQuery.of(context).size.width * (0.90),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(4.0),
                        color: const Color(0xff00ADEF),
                      ),
                      height: 100,
                      child: Center(
                          child: Text(
                        'Cash',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/success');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      width: MediaQuery.of(context).size.width * (0.90),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(4.0),
                        color: const Color(0xff00ADEF),
                      ),
                      height: 100,
                      child: Center(
                          child: Text(
                        'Card',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/success');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      width: MediaQuery.of(context).size.width * (0.90),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(4.0),
                        color: const Color(0xff00ADEF),
                      ),
                      height: 100,
                      child: Center(
                          child: Text(
                        'Scan OPAY QR',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )),
                    ),
                  )
                ],
              ),
            )),
            Positioned(
                bottom: 0,
                child: InkWell(
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
                          Text('Checkout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                          Text('NGN4000',
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
            )
          ],
        )),
      ),
    );

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}
