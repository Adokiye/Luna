import 'package:flutter/material.dart';

class Kids extends StatefulWidget {
  Kids({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _KidsState createState() => _KidsState();
}

class _KidsState extends State<Kids> {
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
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/kids.png'),
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
                    Text('Kids',
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
            
          ],
        ),
    );
  }
}
