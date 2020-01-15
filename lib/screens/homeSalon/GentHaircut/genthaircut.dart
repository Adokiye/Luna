import 'package:flutter/material.dart';
import '../../../components/BottomNavbar/bottomnavbar.dart';
import '../../../components/HeaderBox/headerbox.dart';
import '../../../components/MeterBox/meterbox.dart';
import '../../../components/AppBar/appBar.dart';

class GentHaircut extends StatefulWidget {
  GentHaircut({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _GentHaircutState createState() => _GentHaircutState();
}

class _GentHaircutState extends State<GentHaircut> {
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
            child:  Stack(
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
                      HeaderBox(
                        text: 'Gent Haircut'
                      ),
                      MeterBox(amount: 1000, title: 'Shaving and Trimming', description: '',),
                      MeterBox(amount: 500, title: 'Children Haircut', description: 'Your child (15 and under) haircut will start with a consultation from our customer support service or stylist. Your child’s hair should be freshly washed and will be cut and styled based on your request. Have your child’s haircut in your home and skip the salon!',),
                      MeterBox(amount: 1000, title: 'Men\'s Haircut', description: 'Your appointment will start with a consultation, Next your hair is pre-washed (at home) and will be precisely cut and styled based on your request. You can make special offer with our customer service',),
                    ],
                  ),
                ),
              )),
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
