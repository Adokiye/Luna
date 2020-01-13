import 'package:flutter/material.dart';

class TotalAmountMeterBox extends StatelessWidget {
  final double subTotal;
  final double delivery;

  TotalAmountMeterBox(
      {@required this.subTotal,
      @required this.delivery});

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width * 0.90,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 151.0,
        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4.0,
              offset: Offset(0.0, 4.0))
        ], color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
          child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('SubTotal', style: TextStyle(color: Colors.black, fontSize: 16,),),
              Text(subTotal.toString(), style: TextStyle(color: Colors.black, fontSize: 16, ),),
            ],
          ),
                        Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Delivery', style: TextStyle(color: Colors.black, fontSize: 16,),),
              Text(delivery.toString(), style: TextStyle(color: Colors.black, fontSize: 16, ),),
            ],
          ),
                                  Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Total', style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w700),),
              Text((subTotal+delivery).toString(), style: TextStyle(color: Colors.black, fontSize: 21,fontWeight: FontWeight.w700 ),),
            ],
          ),
          ]),
       )   ));
  }
}

