import 'package:flutter/material.dart';

class BoxNumberInput extends StatelessWidget {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<BoxTextInputState>.
  final String label;
  final bool optional;
  final bool small;
  BoxNumberInput({@required this.label, this.optional, this.small});
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.01,
            top: MediaQuery.of(context).size.height * 0.01,
          ),
          width: small ? MediaQuery.of(context).size.width * 0.25 : MediaQuery.of(context).size.width * 0.90,
          child: Text(label,
              style: TextStyle(fontSize: small ? 10.0 : 14.0, color: Colors.black)),
        ),
        new Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.02,
              top: MediaQuery.of(context).size.height * 0.02,
            ),
          width:  small ? MediaQuery.of(context).size.width * 0.25 : MediaQuery.of(context).size.width * 0.90,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(color: const Color(0xff00adef), width: 1.0),
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    //     labelText: "Name",
                    fillColor: Colors.white,
                    hintText: small ? '$label': 'Enter your $label',
                    hintStyle: TextStyle(
                      fontSize: 13.0,
                      color: const Color(0xff00ADEF),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (val) {
                    if (!optional) {
                      if (val.length == 0) {
                        return "$label cannot be empty";
                      } else {
                        return null;
                      }
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
                ))),
      ],
    );
  }
}
