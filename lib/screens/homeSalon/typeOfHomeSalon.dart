import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/AppBar/appBar.dart';

class TypeOfHomeSalon extends StatefulWidget {
  TypeOfHomeSalon({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TypeOfHomeSalonState createState() => _TypeOfHomeSalonState();
}

class _TypeOfHomeSalonState extends State<TypeOfHomeSalon> {
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
              Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/genthaircut');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/gentHaircut.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.04),
                          width: MediaQuery.of(context).size.width,
                          height: 132.0,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: 10.0, left: 22.0, right: 22.0),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Gent Haircut',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ])),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.04),
                          child: Material(
                              child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/hairdressing.png'),
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: 132.0,
                                  child: new InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/hairstyling');
                                    },
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   image: DecorationImage(
                                      //     image:
                                      //         AssetImage('assets/images/hairdressing.png'),
                                      //     fit: BoxFit.cover,
                                      //   ),
                                      // ),

                                      width: MediaQuery.of(context).size.width,
                                      height: 132.0,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 0.0,
                                              left: 22.0,
                                              right: 22.0),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text('HAIR DRESSING',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    )),
                                              ])),
                                    ),
                                  )))),
                      new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/nails');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/nails.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.04),
                          width: MediaQuery.of(context).size.width,
                          height: 132.0,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: 10.0, left: 22.0, right: 22.0),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('NAILS',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ])),
                        ),
                      ),
                      new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/makeup');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/makeup.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.04),
                          width: MediaQuery.of(context).size.width,
                          height: 132.0,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: 10.0, left: 22.0, right: 22.0),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('MAKE UP',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ])),
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
