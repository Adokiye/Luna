import 'package:flutter/material.dart';
import 'package:luno/screens/laundry/numberOfClothes.dart';

class Shirts extends StatefulWidget {
  Shirts({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ShirtsState createState() => _ShirtsState();
}

class _ShirtsState extends State<Shirts> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Material(
         //   elevation: 1.0,
            child: new InkWell(
                                  onTap: () {
                      Navigator.push(context,   MaterialPageRoute(
      builder: (context) => NumberOfClothes(title: 'Shirts',),
    ));
                    },
              child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/shirt.png'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 15.0),
              width: MediaQuery.of(context).size.width,
              height: 132.0,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0, left: 22.0, right: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text('Shirts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    Container(
                      width: 58.0,
                      height: 58.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29.0),
                        border: Border.all(color: const Color(0xff00ADEF), width: 4.0),
                        color: const Color(0xffF7BF14),
                      ),
                      child: Center(
                        child: Text('N2000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            )),
                      ),
                    )
                  ])),
            ),
            )
            ),
            Material(
         //   elevation: 1.0,
            child: new InkWell(
                                  onTap: () {
                      Navigator.push(context,   MaterialPageRoute(
      builder: (context) => NumberOfClothes(title: 'T-Shirts',),
    ));
                    },
              child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/shirt.png'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 15.0),
              width: MediaQuery.of(context).size.width,
              height: 132.0,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0, left: 22.0, right: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text('T-Shirts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    Container(
                      width: 58.0,
                      height: 58.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29.0),
                        border: Border.all(color: const Color(0xff00ADEF), width: 4.0),
                        color: const Color(0xffF7BF14),
                      ),
                      child: Center(
                        child: Text('N1000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            )),
                      ),
                    )
                  ])),
            ),
            )
            ),
          ],
        ),
    );
  }
}
