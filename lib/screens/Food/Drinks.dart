import 'package:flutter/material.dart';

class Drinks extends StatefulWidget {
  Drinks({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
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
      drinks = value; 
     });
   }

         void soupsSetter(int value){
     setState(() {
      soups = value; 
     });
   }

   
    return Column(
          children: <Widget>[
                                  Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: Text('DRINKS', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black)),
                                  ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        activeColor: const Color(0xff00adef),
                                        value: 0,
                                        groupValue: drinks,
                                        onChanged: drinksSetter,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: new Text(
                                          'Coke',
                                          style: new TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                                                              new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        activeColor: const Color(0xff00adef),
                                        value: 1,
                                        groupValue: drinks,
                                        onChanged: drinksSetter,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: new Text(
                                          'Fanta',
                                          style: new TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                          ],
                        )                                  
                      ),
                                            Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        activeColor: const Color(0xff00adef),
                                        value: 2,
                                        groupValue: drinks,
                                        onChanged: drinksSetter,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: new Text(
                                          'Water',
                                          style: new TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                                                              new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        activeColor: const Color(0xff00adef),
                                        value: 3,
                                        groupValue: drinks,
                                        onChanged: drinksSetter,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: new Text(
                                          'Juice',
                                          style: new TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                          ],
                        )                                  
                      ),
            
          ],
        
    );
  }
}