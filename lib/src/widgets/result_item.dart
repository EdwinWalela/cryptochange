import 'package:flutter/material.dart';
import '../utils/bloc.dart';

class ResultItem extends StatelessWidget {
  
  String name;
  double value;

  ResultItem(this.name,this.value);
  
  coinIcon(BuildContext context){
    return StreamBuilder(
      stream: bloc.amount,
      builder:(BuildContext context,AsyncSnapshot snapshot){
        return Container(
          margin: EdgeInsets.only(left:10.0 ),
          child : Icon(
            Icons.monetization_on,
            color: Colors.black,
            size: 50.0,
          )
        );
      }
    );
  }

  coinValue(BuildContext context){
    return StreamBuilder(
      stream:bloc.amount,
      builder:(BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData){
        return Text('Loading...');
        }else{
        return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right:10.0,top:12.0),
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
                    fontSize: 30.0,
                    color:Colors.black
                  ),
                )
              )
            ],
        );
        }
      }
    );
  }

  coinPercent(BuildContext context ){
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
            coinIcon(context),
            coinValue(context),
            //coinPercent(context),
          ],),
      )
    );
  }
}