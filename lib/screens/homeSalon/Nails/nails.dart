import 'package:flutter/material.dart';
import '../../../components/BottomNavbar/bottomnavbar.dart';
import '../../../components/HeaderBox/headerbox.dart';
import '../../../components/MeterBox/meterbox.dart';

class Nails extends StatefulWidget {
  Nails({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NailsState createState() => _NailsState();
}

class _NailsState extends State<Nails> {
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
            child: Stack(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      HeaderBox(text: 'Nails'),
                      MeterBox(
                        amount: 500,
                        title: 'ADD- ON GEL REMOVAL',
                        description:
                            ' This is an additional service to your manicure If booked alone Your appointment it’s just for removal of your previous gel manicure ',
                      ),
                      MeterBox(
                        amount: 1000,
                        title: 'MANICURE',
                        description:
                            'Your appointment will start with a consultation. Our customer service will contact you  to select your colour, and your nails will be pre-treated, cuticle care, file, buff and shape will be followed by moisturising massage on hands. Pick the polish of your choice “Gel removal included"',
                      ),
                      MeterBox(
                        amount: 1000,
                        title: 'DRY PEDICURE',
                        description:
                            'Your appointment will start with a consultation. Our customer service will contact you  to select your colour, and your nails will be pre-treated, cuticle care, file, buff and shape will be followed by moisturising massage on feet. Pick the polish of your choice “Gel removal included”',
                      ),
                      MeterBox(
                        amount: 1000,
                        title: 'SPA PEDICURE',
                        description:
                            'our appointment will start with a consultation. *Gel removal is not included* Next, select your colour and your nails will be pre-treated cuticle care, file, butt and shape will be followed by a soothing bath and moisturising massage for feet. Pick the polish of your choice.',
                      ),
                      MeterBox(
                        amount: 1000,
                        title: 'DRY PEDICURE WITH GEL POLISH',
                        description:
                            'Your appointment will start with a consultation *Gel removal included*  Next, select your gel colour and your nails will be pre-treated cuticle care, file, buff and shape will be followed by a moisturising massage on feet.  Finally, a base & colour will be applied and nails are placed under a UV light to seal the polish .Pick the polish of your choice.',
                      ),
                    ],
                  ),
                ),
              ),
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
