import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../components/AppBar/appBar.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              automaticallyImplyLeading: false,
              title: AppBarComponent(),
              elevation: 25.0,
              backgroundColor: const Color(0xff00ADEF),
              centerTitle: true,
            ),
          )),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/schedule');
                        },
                        child: Container(
                          child: Row(children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.04),
                                child: new Image.asset(
                                  'assets/images/laundry.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.contain,
                                )),
                            Text(
                              'Laundry/Dry cleaning',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.50,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                        )),  ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/homecleaning');
                      },
                      child: Container(
                        width: 140,
                        child: Row(
                            //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.02),
                                  child: new Image.asset(
                                    'assets/images/houseCleaning.png',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.contain,
                                  )),
                                     Container(
                                  width: MediaQuery.of(context).size.width * 0.20,
                                  child: Text(
                                'House Cleaning',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.50,
                                    fontWeight: FontWeight.w700),
                              )
                                )
                              
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/enterfooddetails');
                          },
                          child: Row(children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.04),
                                child: new Image.asset(
                                  'assets/images/foodDelivery.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.contain,
                                )),

                             
                            Text(
                              'Food Delivery',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.50,
                                  fontWeight: FontWeight.w700),
                            )
                          ])),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/homeSalon');
                        },
                        child: Container(
                          width: 140,
                          child: Row(
                              //                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                    child: new Image.asset(
                                      'assets/images/homeSalon.png',
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    )),
                                Text(
                                  'Home Salon',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.50,
                                      fontWeight: FontWeight.w700),
                                )
                              ]),
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/scheduledispatch');
                        },
                        child: Row(children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * 0.04),
                              child: new Image.asset(
                                'assets/images/dispatchServices.png',
                                height: 40,
                                width: 40,
                                fit: BoxFit.contain,
                              )),
                          Text(
                            'Dispatch Services',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.50,
                                fontWeight: FontWeight.w700),
                          )
                        ]),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/postconstruction');
                          },
                          child: Container(
                            width: 140,
                            child: Row(
                                //                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: new Image.asset(
                                        'assets/images/postConstruction.png',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    'Post Construction',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.50,
                                        fontWeight: FontWeight.w700),
                                  )
                                ]),
                          )),
                    ],
                  )),
              Container(
                  //      margin: EdgeInsets.only(top: 10.0),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text('Top Deals',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),

                  ])),
                                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/topDeals.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 89.0,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: TypewriterAnimatedTextKit(
                                onTap: () {
                                  print("15% off Fill it bag");
                                },
                                totalRepeatCount: 100,
                                text: [
                                  "   15% off Fill it bag",
                                  "   Get it today!",
                                ],
                                displayFullTextOnTap: true,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.start,
                                alignment: AlignmentDirectional
                                    .topStart // or Alignment.topLeft
                                ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/topDeals.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 15.0),
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 89.0,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: TypewriterAnimatedTextKit(
                                onTap: () {
                                  print("15% off Fill it bag");
                                },
                                totalRepeatCount: 100,
                                text: [
                                  "   15% off Fill it bag",
                                  "   Get it today!",
                                ],
                                displayFullTextOnTap: true,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.start,
                                alignment: AlignmentDirectional
                                    .topStart // or Alignment.topLeft
                                )
                            //  Text('   15% off Fill it bag',
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 20,
                            //     ))
                            ))
            ],
          ),
        ),
      ),
    );

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}
