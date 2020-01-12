import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/HeaderBox/headerbox.dart';
import '../../components/Buttons/scheduleButton.dart';
import 'package:flutter/services.dart';

class HomeCleaning extends StatefulWidget {
  HomeCleaning({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeCleaningState createState() => _HomeCleaningState();
}

class _HomeCleaningState extends State<HomeCleaning> {
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
                      HeaderBox(text: 'HOME CLEANING'),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                  child: new Image.asset(
                                'assets/images/cleanerOne.png',
                                height: 47,
                                width: 47,
                                fit: BoxFit.contain,
                              )),
                              Container(
                                  child: new Image.asset(
                                'assets/images/cleanerTwo.png',
                                height: 47,
                                width: 47,
                                fit: BoxFit.contain,
                              )),
                              Container(
                                  child: new Image.asset(
                                'assets/images/cleanerThree.png',
                                height: 47,
                                width: 47,
                                fit: BoxFit.contain,
                              )),
                            ]),
                      ),
                      MyCustomForm(),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: InkWell(
                      onTap: () {
                        //          Navigator.pushNamed(context, '/pay');
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
                                Text('TOTAL',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                Text('N4000',
                                    style: TextStyle(
                                      color: Colors.white,
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

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  int service = 0;
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Name",
                  fillColor: Colors.white,
                  hintText: 'Enter your full name',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xff00ADEF),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Name cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Date",
                          fillColor: Colors.white,
                          hintText: 'DD',
                          hintStyle: TextStyle(
                            fontSize: 13.0,
                            color: const Color(0xff00ADEF),
                          ),
                          border: InputBorder.none,
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(2),
                        ],
                        validator: (val) {
                          if (val.length == 0) {
                            return "Date field cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          height: 2.0,
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Month",
                          fillColor: Colors.white,
                          hintText: 'MM',
                          hintStyle: TextStyle(
                            fontSize: 13.0,
                            color: const Color(0xff00ADEF),
                          ),
                          border: InputBorder.none,
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(2),
                        ],
                        validator: (val) {
                          if (val.length == 0) {
                            return "Month field cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          height: 2.0,
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.40,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
                      child: new TextFormField(
                        initialValue: '2020',
                        decoration: new InputDecoration(
                          labelText: "Year",
                          fillColor: Colors.white,
                          hintText: 'YYYY',
                          hintStyle: TextStyle(
                            fontSize: 13.0,
                            color: const Color(0xff00ADEF),
                          ),
                          border: InputBorder.none,
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(4),
                        ],
                        validator: (val) {
                          if (val.length == 0) {
                            return "Year field cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          height: 2.0,
                        ),
                      ))
                ],
              )),
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Address",
                  fillColor: Colors.white,
                  hintText: 'Enter your Address',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xff00ADEF),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Address cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  //                    <--- top side
                  color: const Color(0xff00ADEF),
                  width: 1.0,
                ),
              )),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Phone Number",
                  fillColor: Colors.white,
                  hintText: 'Enter your phone number',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xff00ADEF),
                  ),
                  border: InputBorder.none,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(11),
                ],
                validator: (val) {
                  if (val.length == 0) {
                    return "Phone Number cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.phone,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Alternative Phone Number(Optional)",
                  fillColor: Colors.white,
                  hintText: 'Enter your alternative number',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xff00ADEF),
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(11),
                ],
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                      color: const Color(0xff00adef), width: 1.0),),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText:
                      "How many Rooms(includes Living Room, Kitchen, Toilet, BC)",
                  fillColor: Colors.white,
                  hintText: 'Enter number of rooms',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xff00ADEF),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Number of rooms filed cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            width: MediaQuery.of(context).size.width * 0.90,
            child: new Text(
              'SERVICE',
              style: new TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          Material(
            color: const Color(0xff00adef),
            child: InkWell(
                onTap: () {
                  setState(() {
                    service = 0;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                                margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
           //         color: const Color(0xff00adef),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Basic(Bungalow)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            )),
                        service == 0
                            ? new Container(
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                ),
                              )
                            : new Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                      ],
                    ),
                  ),
                )),
          ),
          Material(
            color: const Color(0xff00adef),
            child: InkWell(
                onTap: () {
                  setState(() {
                    service = 1;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                                margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
          //          color: const Color(0xff00adef),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Basic(Duplex)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            )),
                        service == 1
                            ? new Container(
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                ),
                              )
                            : new Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                      ],
                    ),
                  ),
                )),
          ),
          Material(
            color: const Color(0xff00adef),
            child: InkWell(
                onTap: () {
                  setState(() {
                    service = 2;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                                margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
          //          color: const Color(0xff00adef),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Premium(Bungalow)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            )),
                        service == 2
                            ? new Container(
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                ),
                              )
                            : new Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                      ],
                    ),
                  ),
                )),
          ),
          Material(
            color: const Color(0xff00adef),
            child: InkWell(
                onTap: () {
                  setState(() {
                    service = 3;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                                margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
         //           color: const Color(0xff00adef),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Premium(Duplex)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            )),
                        service == 3
                            ? new Container(
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                ),
                              )
                            : new Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23 / 2),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                      ],
                    ),
                  ),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: ScheduleButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                    Navigator.pushNamed(context, '/pay');
                  }
                },
                text: 'PROCEED'),
          ),
        ],
      ),
    );
  }
}
