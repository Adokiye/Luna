import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/buttons/scheduleButton.dart';

class NumberOfClothes extends StatefulWidget {
  NumberOfClothes({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NumberOfClothesState createState() => _NumberOfClothesState();
}

class _NumberOfClothesState extends State<NumberOfClothes> {
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
          child: Center(
        child: Stack(children: <Widget>[
          SingleChildScrollView(
              child: Container(
            //      height: MediaQuery.of(context).size.height,
                   margin: EdgeInsets.only(bottom: 60.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          width: MediaQuery.of(context).size.width * (0.90),
                          child: Text('SHIRTS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ))),
                      new ListTileItem(
                        title: "Dry Clean only",
                      ),
                      new ListTileItem(
                        title: "Dry Clean and Iron",
                      ),
                      new ListTileItem(
                        title: "Iron only",
                      ),
                      new ListTileItem(
                        title: "Starch only",
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          width: MediaQuery.of(context).size.width * (0.90),
                          child: Text('TROUSERS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ))),
                      new ListTileItem(
                        title: "Dry Clean only",
                      ),
                      new ListTileItem(
                        title: "Dry Clean and Iron",
                      ),
                      new ListTileItem(
                        title: "Iron only",
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          width: MediaQuery.of(context).size.width * (0.90),
                          child: Text('NATIVE',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ))),
                      new ListTileItem(
                        title: "Dry Clean only",
                      ),
                      new ListTileItem(
                        title: "Dry Clean and Iron",
                      ),
                      new ListTileItem(
                        title: "Iron only",
                      ),
                      new ListTileItem(
                        title: "Starch only",
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          width: MediaQuery.of(context).size.width * (0.90),
                          child: Text('DRESS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ))),
                      new ListTileItem(
                        title: "Dry Clean only",
                      ),
                      new ListTileItem(
                        title: "Dry Clean and Iron",
                      ),
                      new ListTileItem(
                        title: "Iron only",
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          width: MediaQuery.of(context).size.width * (0.90),
                          child: Text('SUITS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ))),
                      new ListTileItem(
                        title: "Dry Clean only",
                      ),
                      new ListTileItem(
                        title: "Dry Clean and Iron",
                      ),
                      new ListTileItem(
                        title: "Iron only",
                      ),
                                                Container(
                                                  margin: EdgeInsets.symmetric(vertical: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            child: ScheduleButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/pay');
                                },
                                text: 'PROCEED'),
                          ),
                    ],
                  ))),
                                         Positioned(
          bottom: 0,  
          child: InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              color: const Color(0xff00ADEF),
            child:      Padding(
              padding: EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[Text('Your Basket',
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
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.90,
                child: BottomNavBar()),
          ),
        ]),
      )),
    );

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}

class ListTileItem extends StatefulWidget {
  String title;
  ListTileItem({this.title});
  @override
  _ListTileItemState createState() => new _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width * (0.90),
      height: 65.0,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(3.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                offset: Offset(0, 15),
                color: Color(0xff00D99E).withOpacity(.6),
                spreadRadius: -9)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(color: const Color(0xff00ADEF), fontSize: 12.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _itemCount != 0
                    ? new GestureDetector(
                        onTap: () => setState(() => _itemCount--),
                        child: Container(
                          margin: EdgeInsets.only(right: 14.0),
                          width: 19.0,
                          height: 19.0,
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(3.0),
                              color: const Color(0xffF7BF14)),
                          child: Center(
                            child: Text(
                              '-',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      )
                    : new Container(),
                Container(
                  margin: EdgeInsets.only(right: 14.0),
                  child: Center(
                    child: Text(
                      _itemCount.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () => setState(() => _itemCount++),
                  child: Container(
                    width: 19.0,
                    height: 19.0,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(3.0),
                        color: const Color(0xffF7BF14)),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
