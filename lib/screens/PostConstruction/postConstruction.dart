import 'package:flutter/material.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';
import '../../components/HeaderBox/headerbox.dart';
import '../../components/Buttons/scheduleButton.dart';
import 'package:flutter/services.dart';
import '../../components/TextInputs/boxNumberInput.dart';
import '../../components/TextInputs/boxTextInput.dart';
import '../../components/AppBar/appBar.dart';

class PostConstruction extends StatefulWidget {
  PostConstruction({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PostConstructionState createState() => _PostConstructionState();
}

class _PostConstructionState extends State<PostConstruction> {
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
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      HeaderBox(text: 'POST CONSTRUCTION'),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                  child: new Image.asset(
                                'assets/images/postOne.png',
                                height: 47,
                                width: 47,
                                fit: BoxFit.contain,
                              )),
                              Container(
                                  child: new Image.asset(
                                'assets/images/postTwo.png',
                                height: 47,
                                width: 47,
                                fit: BoxFit.contain,
                              )),
                            ]),
                      ),
                                            Container(
                                               margin: EdgeInsets.only(bottom: 60.0),
                        child: MyCustomForm(),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Material(
               color: const  Color(0xff00adef),
                    child: InkWell(
                      onTap: () {
                                  Navigator.pushNamed(context, '/pay');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                                                margin: EdgeInsets.only(top: 10.0),
                        height: 34.0,
                        color: const Color(0xff00ADEF),
                        child: Padding(
                          padding: EdgeInsets.only(
                             left: 22.0, right: 22.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('REQUEST QUOTE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                Text('N4000',
                                    style: TextStyle(
                                      color: const Color(0xff00ADEF),
                                      fontSize: 20,
                                    ))
                              ]),
                        ),
                      )))),
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
          BoxTextInput(label: 'Name', optional: false, small: false),
          Column(
             children:<Widget>[     new Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.01,
            top: MediaQuery.of(context).size.height * 0.01,
          ),
          width: MediaQuery.of(context).size.width * 0.90,
          child: Text('Appointment Date',
              style: TextStyle(fontSize: 14.0, color: Colors.black)),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               BoxNumberInput(label: 'Date(DD)', optional: false, small: true,hint:'date'),
               BoxNumberInput(label: 'Month(MM)', optional: false, small: true,hint:'month'),
               BoxNumberInput(label: 'Year(YYYY)', optional: false, small: true,hint:'year'),
             ],
           )
           ] ),
           BoxTextInput(label: 'Address', optional: false, small: false,hint:'address'),
           BoxNumberInput(label: 'Phone Number', optional: false, small: false,hint:'phone number'),
            BoxNumberInput(label: 'Alternate Phone Number',optional: true, small: false,hint:'alternative phone number'),
             BoxNumberInput(label: 'How Many rooms(includes Living Room,Kitchen,Toilet,BQ)', optional: false, small: false,hint:'rooms'),

          Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01,
             top: MediaQuery.of(context).size.height * 0.01,
            ),
            width: MediaQuery.of(context).size.width * 0.90,
            child: new Text(
              'SERVICE',
              style: new TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          Container(
                                                        decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                        margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01,
             top: MediaQuery.of(context).size.height * 0.01,
            ),
            child:           Material(
                                    shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
         //   side: BorderSide(color: Colors.red)
            ),
            color: const Color(0xff00adef),
            child: InkWell(
                onTap: () {
                  setState(() {
                    service = 0;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
           //         color: const Color(0xff00adef),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0,),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Regular Cleaning',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            )),
                        service != 0
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
                                  color: const Color(0xff00adef),
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                      ],
                    )),
                  ),
                )),
          ),
          )
,
          Container(
                                            decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                        margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.02,
             top: MediaQuery.of(context).size.height * 0.01,
            ),
            child:           Material(
                                    shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
         //   side: BorderSide(color: Colors.red)
            ),
            color: const Color(0xff00adef),
            child: InkWell(
                onTap: () {
                  setState(() {
                    service = 1;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
           //         color: const Color(0xff00adef),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0,),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Deep Cleaning',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            )),
                        service != 1
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
                                  color: const Color(0xff00adef),
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                      ],
                    )),
                  ),
                )),
          ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(9.0),
          //   ),
          //   child: ScheduleButton(
          //       onPressed: () {
          //         // Validate returns true if the form is valid, or false
          //         // otherwise.
          //         if (_formKey.currentState.validate()) {
          //           // If the form is valid, display a Snackbar.
          //           Scaffold.of(context).showSnackBar(
          //               SnackBar(content: Text('Processing Data')));
          //           Navigator.pushNamed(context, '/pay');
          //         }
          //       },
          //       text: 'PROCEED'),
          // ),
        ],
      ),
    );
  }
}