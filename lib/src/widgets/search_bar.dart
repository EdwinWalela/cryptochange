import 'package:flutter/material.dart';
import '../utils/bloc.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
    int _radioValue = 0;
    currencyUpdate(int value){
      setState(() {     
        _radioValue = value;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.only(top:25.0,left: 25.0,right: 25.0),
      height: MediaQuery.of(context).size.height/4.5,
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ) ,
      child:Column(
        children: <Widget>[
          Container(margin: EdgeInsets.only(top:0.0),),
          Theme(
            data:ThemeData(
              hintColor: Colors.blueGrey,
            ),
            child:StreamBuilder(
              stream: bloc.amount,
              builder:(BuildContext context,AsyncSnapshot snapshot){
                return TextField(
                  onChanged: bloc.changeAmount,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                    color: Colors.blueGrey
                  ),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color:Colors.black
                    ) ,
                    hintText: 'Enter amount',
                  ),
                );
                }
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
             Text(
               'USD',
               style: TextStyle(
                color: Colors.blueGrey
               ),
             ),
             Radio(
              activeColor:Colors.green,
              groupValue:_radioValue,
              onChanged:(value){currencyUpdate(value);},
              value:0
            ),
            // Text(
            //   'KES',
            //   style: TextStyle(
            //      color: Colors.blueGrey
            //    ),
            // ),
            // Radio(
            //   activeColor:Colors.green,
            //   groupValue:_radioValue,
            //   onChanged:(value){currencyUpdate(value);},
            //   value:1
            // ),
           ]
          )
        ],
      )
    );
  }
}
