import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/HeaderBox/headerbox.dart';
import '../../components/Buttons/scheduleButton.dart';
import 'package:flutter/services.dart';
import './Drinks.dart';
import './enterFoodDetails.dart';
import './Meat.dart';
import './FoodVendors.dart';
import './Rice.dart';
import './Soups.dart';
import './Swallow.dart';
import '../../components/AppBar/appBar.dart';

class FoodMenu extends StatefulWidget {
  FoodMenu({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
    bool _vendor = false;
   bool _menu = false;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
   int food_vendor = 0;
   int swallow = 0;
   int rice = 0;
   int meat = 0;
   int drinks = 0;
   int soups = 0;
 
   
   void _toggleMenu() {
  setState(() {
    if (_menu) {
      _menu = false;
    } else {
      _menu = true;
    }
  });
}

   void _toggleVendor() {
  setState(() {
    if (_vendor) {
      _vendor = false;
    } else {
      _vendor = true;
    }
  });
}


   void swallowSetter(int value){
     setState(() {
      swallow = value; 
     });
   }
   
     void food_vendorSetter(int value){
     setState(() {
      food_vendor = value; 
     });
   } 

      void riceSetter(int value){
     setState(() {
      rice = value; 
     });
   }

      void meatSetter(int value){
     setState(() {
      meat = value; 
     });
   }

      void drinksSetter(int value){
     setState(() {
      swallow = value; 
     });
   }


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
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        child: InkWell(
                          onTap:(){_toggleVendor();},
                          child: 
                      HeaderBox(text: 'FOOD VENDORS'), 
                        ),
                      ),
                 _vendor ?  FoodVendors() : new Container(),
                                            Material(
                        child: InkWell(
                          onTap:(){_toggleMenu();},
                          child: 
                      HeaderBox(text: 'MENU LIST'),
                        ),
                      ),
                     _menu ? Swallow()  : new Container(),
                     _menu ? Soups()  : new Container(),
                    _menu ? Rice()  : new Container(),
                  _menu ?    Meat()  : new Container(),
                  _menu ?    Drinks()  : new Container(),
                    ],
                  ),
                ),
              )),
              Positioned(
                  bottom: 0,
                  child: InkWell(
                      onTap: () {
                                  Navigator.pushNamed(context, '/foodQty');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45.0,
                        color: const Color(0xff00ADEF),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 22.0, right: 22.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('CHECKOUT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                Text('N4000',
                                    style: TextStyle(
                                      color: const Color(0xff00ADEF),
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

