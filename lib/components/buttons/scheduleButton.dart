import 'package:flutter/material.dart';

class ScheduleButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  ScheduleButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: const Color(0xff00ADEF),
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(9.0),
),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
