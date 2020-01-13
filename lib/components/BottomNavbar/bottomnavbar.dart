import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      //    alignment: Alignment(1.0, 1.0),
                                      child: Center(
                                        child: Icon(Icons.home,
                                            color: const Color(0xFF0E3311).withOpacity(0)),
                                      )),
                                      SizedBox(
                                        width: 45.0, height: 45.0,
                                        child: RawMaterialButton(
                              elevation: 3.0,
                                    fillColor: const Color(0xff00ADEF),
                                          shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(45.0/2),
),
                         //     highlightElevation: 1.0,
                                                       onPressed: () {
                                Navigator.pushReplacementNamed(context, '/home');
                              },
                              child:  Container(
                                      width: 45.0,
                                      height: 45.0,
                                      //    alignment: Alignment(1.0, 1.0),
                                      child: Center(
                                        child: Icon(Icons.home,
                                            color: Colors.white),
                                      ))),)
                                      ,
                                      SizedBox(
                                        width: 45.0, height: 45.0,
                                        child: RawMaterialButton(
                              elevation: 3.0,
                                    fillColor: const Color(0xff00ADEF),
                                          shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(45.0/2),
),
                         //     highlightElevation: 1.0,
                              
                              onPressed: () {UrlLauncher.launch("tel://08033344456");
                              },
                              child:  Container(
                                      width: 45.0,
                                      height: 45.0,
                                      //    alignment: Alignment(1.0, 1.0),
                                      child: Center(
                                        child: Icon(
                                            IconData(
                                              57520,
                                              fontFamily: 'MaterialIcons',
                                            ),
                                            color: Colors.white),
                                      ))),),
                                ],
                              ));
  }
}
