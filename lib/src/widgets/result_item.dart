import 'package:flutter/material.dart';
import '../utils/bloc.dart';

class ResultItem extends StatelessWidget {
  
  String name;
  double value,change;

  ResultItem(this.name,this.value,this.change);
  
  coinIcon(BuildContext context){
    return StreamBuilder(
      stream: bloc.amount,
      builder:(BuildContext context,AsyncSnapshot snapshot){
        return Container(
          margin: EdgeInsets.only(left:10.0 ),
          child : Image.asset(
            'assets/images/${this.name.toLowerCase()}.png',
            height: 50.0,
            width:50.0,
            )
        );
      }
    );
  }

  coinValue(BuildContext context){
     return Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:10.0),
                child:Text(
                  '$name',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(top:10.0),),
              Container(
                margin: EdgeInsets.only(left:15.0),
                child:Text(
                 '${value.toStringAsFixed(7)}',
                  style: TextStyle(
                    fontSize: double.parse(value.toStringAsFixed(7)) > 50 ? 20.0 : 25.0,
                    color:Colors.black
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(left:15.0),
                child:Text(
                  double.parse(change.toStringAsFixed(5)) > 0 ? '+${change.toStringAsFixed(5)}' :'-${change.toStringAsFixed(5)}' ,
                  style: TextStyle(
                    color: double.parse(change.toStringAsFixed(5)) > 0 ? Colors.green : Colors.red
                  ),
                ),
              ),
            ],
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
        padding: EdgeInsets.only(top:5.0),
        child: Row(
          children: <Widget>[
            coinIcon(context),
            coinValue(context),
            //coinPercent(context),
          ],),
      )
    );
  }
}