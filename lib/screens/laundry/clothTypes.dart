import 'package:flutter/material.dart';
import '../../components/Lists/Shirts/Shirts.dart';
import '../../components/Lists/Trousers/Trousers.dart';
import '../../components/Lists/Suits/Suits.dart';
import '../../components/Lists/Trad/Trad.dart';
import '../../components/Lists/Dress/Dress.dart';
import '../../components/Lists/Kids/Kids.dart';
import '../../components/Lists/Others/Others.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';

class ClothTypes extends StatefulWidget {
  ClothTypes({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ClothTypesState createState() => _ClothTypesState();
}

class _ClothTypesState extends State<ClothTypes> {
  String activeTab = 'shirts';
  PageController _pageController = PageController();
  void pageChanged(int index) {
    if (index == 0) {
      setState(() {
        activeTab = 'shirts';
      });
    } else if (index == 1) {
      setState(() {
        activeTab = 'trousers';
      });
    } else if (index == 2) {
      setState(() {
        activeTab = 'suits';
      });
    } else if (index == 3) {
      setState(() {
        activeTab = 'trad';
      });
    } else if (index == 4) {
      setState(() {
        activeTab = 'dress';
      });
    } else if (index == 5) {
      setState(() {
        activeTab = 'kids';
      });
    } else if (index == 6) {
      setState(() {
        activeTab = 'others';
      });
    }
  }

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
            preferredSize: Size.fromHeight(150.0), // here the desired height
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: AppBar(
                title: new Image.asset('assets/images/logo.png', height: 60),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(70.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      height: 75.0,
                      //            alignment: Alignment.center,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'shirts';
                                  _pageController.jumpToPage(0);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'shirts'
                                          ? new Image.asset(
                                              'assets/images/shirtblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/shirtgreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'shirts'
                                          ? Text('Shirts',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Shirts',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'shirts'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'trousers';
                                  _pageController.jumpToPage(1);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'trousers'
                                          ? new Image.asset(
                                              'assets/images/trouserblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/trousergreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'trousers'
                                          ? Text('Trousers',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Trousers',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'trousers'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'suits';
                                  _pageController.jumpToPage(2);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'suits'
                                          ? new Image.asset(
                                              'assets/images/suitblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/suitgreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'suits'
                                          ? Text('Suits',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Suits',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'suits'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'trad';
                                  _pageController.jumpToPage(3);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'trad'
                                          ? new Image.asset(
                                              'assets/images/tradblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/tradgreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'trad'
                                          ? Text('Trad',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Trad',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'trad'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'dress';
                                  _pageController.jumpToPage(4);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'dress'
                                          ? new Image.asset(
                                              'assets/images/dressblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/dressgreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'dress'
                                          ? Text('Dress',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Dress',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'dress'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'kids';
                                  _pageController.jumpToPage(5);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'kids'
                                          ? new Image.asset(
                                              'assets/images/kidsblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/kidsgreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'kids'
                                          ? Text('Kids',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Kids',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'kids'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeTab = 'others';
                                  _pageController.jumpToPage(6);
                                });
                              },
                              child: Container(
                                  width: 44.0,
                                  height: 58.0,
                                  margin: EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      activeTab == 'others'
                                          ? new Image.asset(
                                              'assets/images/othersblueicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            )
                                          : new Image.asset(
                                              'assets/images/othersgreyicon.png',
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                      activeTab == 'others'
                                          ? Text('Others',
                                              style: TextStyle(
                                                color: const Color(0xff857A7A),
                                                fontSize: 11,
                                              ))
                                          : Text('Others',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              )),
                                      activeTab != 'others'
                                          ? Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: 38.0,
                                              height: 1.0,
                                              color: const Color(0xffF7BE14),
                                            ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )),
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
                child: PageView(
                  controller: _pageController,
                  //    physics: ClampingScrollPhysics(),
                  onPageChanged: (index) {
                    pageChanged(index);
                  },
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: <Widget>[
                    Shirts(),
                    Trousers(),
                    Suits(),
                    Trad(),
                    Dress(),
                    Kids(),
                    Others(),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/numberofclothes');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45.0,
                      color: const Color(0xff00ADEF),
                      child: Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 22.0,
                          ),
                          child: Text('Proceed',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ))),
                    ),
                  )),
              Positioned(
                bottom: 15,
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: BottomNavBar()),
              ),
            ])));

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}
