import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../components/buttons/scheduleButton.dart';
import '../../../components/BottomNavbar/bottomnavbar.dart';
import 'package:luno/screens/ItemModel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class PickUpDetails extends StatefulWidget {
  PickUpDetails({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PickUpDetailsState createState() => _PickUpDetailsState();
}

class _PickUpDetailsState extends State<PickUpDetails> {
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
        child: Stack(children: <Widget>[
          SingleChildScrollView(
            child: PickUpForm(),
          ),
          Positioned(
              bottom: 0,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/pay');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45.0,
                    color: const Color(0xff00ADEF),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
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
        ]),
      ),
    );

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
  }
}

// Create a Form widget.
class PickUpForm extends StatefulWidget {
  @override
  PickUpFormState createState() {
    return PickUpFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class PickUpFormState extends State<PickUpForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<PickUpFormState>.
  final _formKey = GlobalKey<FormState>();
  int _radioValue1 = -1;
  int _radioValue2 = -1;
  final f = new DateFormat('yyyy-MM-dd hh:mm');
  var scheduleDate = new DateTime.now();
  void _handleRadioValueChange2(int value, bool schedule) {
    setState(() {
      _radioValue2 = value;

      // switch (_radioValue2) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      // }
    });
    if (schedule) {
      DatePicker.showDatePicker(context,
          showTitleActions: true, minTime: scheduleDate, onChanged: (date) {
        Fluttertoast.showToast(
            msg: f.format(date), toastLength: Toast.LENGTH_SHORT);
      }, onConfirm: (date) {
        setState(() {
          scheduleDate = date;
        });
      }, currentTime: DateTime.now(), locale: LocaleType.en);
    }
  }

  List<String> values = ['Knock on Door', 'Right Away'];

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

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
                  border: Border(
                    bottom: BorderSide(
                      //                    <--- top side
                      color: const Color(0xff00ADEF),
                      width: 1.0,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(3.0)),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "ADDRESS",
                  fillColor: Colors.white,
                  hintText: 'Enter your Address',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
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
                keyboardType: TextInputType.multiline,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          new Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      //                    <--- top side
                      color: const Color(0xff00ADEF),
                      width: 1.0,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(3.0)),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "FIRST NAME",
                  fillColor: Colors.white,
                  hintText: 'Enter your First Name',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "First Name cannot be empty";
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
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      //                    <--- top side
                      color: const Color(0xff00ADEF),
                      width: 1.0,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(3.0)),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "SURNAME",
                  fillColor: Colors.white,
                  hintText: 'Enter your Surname',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Surname cannot be empty";
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
                  color: const Color(0xffC4C4C4),
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
                    color: const Color(0xffC4C4C4),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Phone number cannot be empty";
                  } else {
                    return null;
                  }
                },
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
                  border: Border(
                bottom: BorderSide(
                  //                    <--- top side
                  color: const Color(0xffC4C4C4),
                  width: 1.0,
                ),
              )),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Email",
                  fillColor: Colors.white,
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Email cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 2.0,
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4.0,
                      offset: Offset(0.0, 4.0))
                ],
                color: Colors.white,
              ),
              child: ListView.builder(
                itemCount: prepareData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ExpansionPanelList(
                    animationDuration: Duration(seconds: 1),
                    children: [
                      ExpansionPanel(
                        body: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        activeColor: const Color(0xff00adef),
                                        value: 0,
                                        groupValue:
                                            prepareData[index].bodyModel.id == 1
                                                ? _radioValue1
                                                : _radioValue2,
                                        onChanged:
                                            prepareData[index].bodyModel.id == 1
                                                ? _handleRadioValueChange1
                                                : _handleRadioValueChange2,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: new Text(
                                          prepareData[index].bodyModel.title1,
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
                                        groupValue:
                                            prepareData[index].bodyModel.id == 1
                                                ? _radioValue1
                                                : _radioValue2,
                                        onChanged:
                                            prepareData[index].bodyModel.id == 1
                                                ? _handleRadioValueChange1
                                                : _handleRadioValueChange2,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: new Text(
                                          prepareData[index].bodyModel.title2,
                                          style: new TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                                  prepareData[index].bodyModel.title2 ==
                                          'Phone Call' ??
                                      PhoneCallForm(),
                                  prepareData[index].bodyModel.title2 ==
                                          'Schedule for Later' ??
                                      Text(
                                        f.format(scheduleDate),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                ])),
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                              //             padding: EdgeInsets.all(10),
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 37.0,
                              child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Center(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                        Text(
                                          prepareData[index].header,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          prepareData[index].header,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ]))));
                        },
                        isExpanded: prepareData[index].isExpanded,
                      )
                    ],
                    expansionCallback: (int item, bool status) {
                      setState(() {
                        prepareData[index].isExpanded =
                            !prepareData[index].isExpanded;
                      });
                    },
                  );
                },
              )),
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
                    // Scaffold.of(context).showSnackBar(
                    //     SnackBar(content: Text('Processing Data')));
                    Navigator.pushNamed(context, '/pay');
                  }
                },
                text: 'PROCEED'),
          ),
        ],
      ),
    );
  }

  List<ItemModel> prepareData = <ItemModel>[
    ItemModel(
        header: 'Delivery Details',
        bodyModel:
            BodyModel(title1: 'Knock on Door', title2: 'Phone Call', id: 1)),
    ItemModel(
        header: 'Schedule Order',
        bodyModel: BodyModel(
            title1: 'Right Away', title2: 'Schedule for Later', id: 2)),
  ];
}

// Create a Form widget.
class PhoneCallForm extends StatefulWidget {
  @override
  PhoneCallFormState createState() {
    return PhoneCallFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class PhoneCallFormState extends State<PhoneCallForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<PhoneCallFormState>.
  final _formKey = GlobalKey<FormState>();

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
                  border: Border(
                bottom: BorderSide(
                  //                    <--- top side
                  color: const Color(0xffC4C4C4),
                  width: 1.0,
                ),
              )),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Name",
                  fillColor: Colors.white,
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
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
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  //                    <--- top side
                  color: const Color(0xffC4C4C4),
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
                    color: const Color(0xffC4C4C4),
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
                  border: Border(
                bottom: BorderSide(
                  //                    <--- top side
                  color: const Color(0xffC4C4C4),
                  width: 1.0,
                ),
              )),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Address",
                  fillColor: Colors.white,
                  hintText: 'Enter your Address',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
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
                    Fluttertoast.showToast(
                        msg: 'Phone Call details Saved',
                        toastLength: Toast.LENGTH_SHORT);
                    ;
                    //    Navigator.pushNamed(context, '/clothTypes');
                  }
                },
                text: 'SAVE'),
          ),
        ],
      ),
    );
  }
}