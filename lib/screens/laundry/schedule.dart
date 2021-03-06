import 'package:flutter/material.dart';
import '../../components/buttons/scheduleButton.dart';
import '../../components/BottomNavbar/bottomnavbar.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    //      width: MediaQuery.of(context).size.width * 0.90),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 50.0, height: 50.0,child:   RawMaterialButton(
                              elevation: 10.0,
                         //     highlightElevation: 1.0,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02),
                                      child: new Image.asset(
                                        'assets/images/blueBack.png',
                                        height: 14,
                                        width: 11,
                                        fit: BoxFit.contain,
                                      ),
                                    )
                                  ])) ,),
                          Center(
                            child: Container(
                            child: new Image.asset(
                              'assets/images/logo.png',
                              height: 116,
                              width: 215,
                              fit: BoxFit.contain,
                            ),
                          )
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:<Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            child: ScheduleButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/enterDetails');
                                },
                                text: 'SCHEDULE PICKUP'),
                          ),
                                                    Container(
                            margin: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            child: ScheduleButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/trackyourorder');
                                },
                                text: 'TRACK YOUR ORDER'),
                          ),
                            ]
                          ),

                          BottomNavBar()
                        ],
                      ),
                    )))));
  }
}
