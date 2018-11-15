import 'package:flutter/material.dart';

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
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(top:25.0,left: 25.0,right: 25.0),
      height: MediaQuery.of(context).size.height/4.2,
      decoration:BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ) ,
      child:Column(
        children: <Widget>[
          Container(margin: EdgeInsets.only(top:0.0),),
          Theme(
            data:ThemeData(
              hintColor: Colors.white
            ),
            child:TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 20.0,
                letterSpacing: 1.5,
                color: Colors.white
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 10.0,
                    color: Colors.white
                  )
                ),
                hintStyle: TextStyle(
                  color:Colors.white
                ) ,
                hintText: 'Enter amount',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
           children:<Widget>[
             Text(
               'USD',
               style: TextStyle(
                 color: Colors.white
               ),
             ),
             Radio(
              activeColor: Colors.white,
              groupValue:_radioValue,
              onChanged:(value){currencyUpdate(value);},
              value:0
            ),
            Text(
              'KES',
              style: TextStyle(
                 color: Colors.white
               ),
            ),
            Radio(
              activeColor: Colors.white,
              groupValue:_radioValue,
              onChanged:(value){currencyUpdate(value);},
              value:1
            ),
           ]
          )
        ],
      )
    );
  }
}
