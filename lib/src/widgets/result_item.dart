import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  coinIcon(){
    return Container(
      margin: EdgeInsets.only(left:10.0 ),
      child : Icon(
        Icons.monetization_on,
        color: Colors.black,
        size: 50.0,
      )
    );
  }

  coinValue(){
    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right:10.0,top:12.0),
            child:Text(
              'BTC | BITCOIN',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ),
          Container(margin: EdgeInsets.only(top:10.0),),
          Container(
            margin: EdgeInsets.only(left:15.0),
            child:Text(
              '0.000156',
              style: TextStyle(
                fontSize: 30.0,
                color:Colors.black
              ),
            )
          )
        ],
    );
  }

  coinPercent(){
    double val = -0.00719;
    return Container(
      margin: EdgeInsets.only(bottom: 60.0,left:50.0),
      alignment: Alignment.centerRight,
      child: Text(
        val < 0 ? '-$val': '+$val',
        style: TextStyle(
          color:val < 0 ? Colors.red : Colors.green
          ),
      )
    );
  }
 @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/6.5,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white
      ),
      child:Container(
        padding: EdgeInsets.only(top:10.0),
        child: Row(
          children: <Widget>[
            coinIcon(),
            coinValue(),
            coinPercent(),
          ],),
      )
    );
  }
}