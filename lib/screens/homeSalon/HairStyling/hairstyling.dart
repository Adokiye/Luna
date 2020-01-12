import 'package:flutter/material.dart';
import '../../../components/BottomNavbar/bottomnavbar.dart';
import '../../../components/HeaderBox/headerbox.dart';
import '../../../components/MeterBox/meterbox.dart';

class HairStyling extends StatefulWidget {
  HairStyling({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HairStylingState createState() => _HairStylingState();
}

class _HairStylingState extends State<HairStyling> {
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
                      HeaderBox(
                        text: 'Hair Styling'
                      ),
                      MeterBox(amount: 3000, title: 'ADD ON CLIP-IN EXTENSION', description: ' Our Stylist will add in your clip-in extensions, and continue to style you based on your desired look. Please note, this is only an add - on service!',),
                      MeterBox(amount: 1000, title: 'BRAIDED STYLE', description: 'Our customer support team will start with consultation, next our stylist arrives to braid your dry-hair to perfection( Fishtail, French braid, Two braid pigtails, braid-out, half cornrow and single braids, zigzag braid, layered braid, half braided updo, e.t.c.)',),
                      MeterBox(amount: 1000, title: 'UPDO/NATURAL AFRICAN BRAIDS', description: 'Your appointment will start with a consultation, Next your hair is pre-washed (at home) and will be precisely cut and styled based on your request. You can make special offer with our customer service',),
                      MeterBox(amount: 1000, title: 'BLOWOUT', description: 'Your appointment will start with a consultation, Next,  our stylist arrives and your hair will be blown out.',),
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
            child:      Padding(
              padding: EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[Text('PROCEED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                        Text('N4000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ))]),
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
