import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../components/buttons/scheduleButton.dart';
import '../../components/AppBar/appBar.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';

class EnterFoodDetails extends StatefulWidget {
  EnterFoodDetails({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _EnterFoodDetailsState createState() => _EnterFoodDetailsState();
}

class _EnterFoodDetailsState extends State<EnterFoodDetails> {
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
        child:  Center(
          child: Stack(
      children: <Widget>[       
        Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child:  MyCustomForm())),
              Positioned(
                bottom: 0,
                child:               Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: BottomNavBar()),
              )

            ],
          )),
      ),
      
    );

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

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                  hintText: 'Enter your full name',
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
                  height: 1.0,
                ),
              )),
          new Container(
margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                  height: 1.0,
                ),
              )),
          new Container(
margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                  labelText: "Alternative Phone Number(Optional)",
                  fillColor: Colors.white,
                  hintText: 'Enter your alternative number',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
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
                  height: 1.0,
                ),
              )),
          new Container(
margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                  labelText: "Pickup Address",
                  fillColor: Colors.white,
                  hintText: 'Enter your Pickup Address',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Pickup address cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 1.0,
                ),
              )),
          new Container(
margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                  labelText: "Delivery Address (If Different)",
                  fillColor: Colors.white,
                  hintText: 'Enter your delivery address',
                  hintStyle: TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xffC4C4C4),
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  height: 1.0,
                ),
              )),
              Container(
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                child: new Image.asset('assets/images/foodIcon.png', height: 40, fit: BoxFit.contain,),
              ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.0),
            ),
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
            child: ScheduleButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                    Navigator.pushNamed(context, '/foodmenu');
                  }
                },
                text: 'PROCEED'),
          ),
        ],
      ),
     );
  }
}
