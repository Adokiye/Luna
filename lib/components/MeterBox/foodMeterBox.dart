import 'package:flutter/material.dart';

class FoodMeterBox extends StatelessWidget {
  final String title;
  final double amount;
  FoodMeterBox(
      {@required this.title,
      @required this.amount});

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width * 0.90,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 73.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 4.0,
              offset: Offset(0.0, 2.0))
        ], color: Colors.white),
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      amount.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),),
                                Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                Container(
                      child: Text(title, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),),
                Container(
                 //     width: MediaQuery.of(context).size.width * 0.60,
                      child: ListTileItem(),
                ),]),)
              ],
            )));
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
    return new Row(
    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _itemCount != 0
                ? new GestureDetector(
                    onTap: () => setState(() => _itemCount--),
                    child: Container(
                      margin: EdgeInsets.only(right: 14.0),
                      width: 19.0,
                 //     height: 19.0,
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(3.0),
                          color: const Color(0xffF7BF14)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
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
       //               height: 19.0,
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(3.0),
                          color: const Color(0xffF7BF14)),
                child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[ Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                     ) ]
                    
                
                ),
            
            ))
             ],
        )
      ],
    );
  }
}
