import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child:Row(
        children: <Widget>[
          Expanded(
           child:TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 17.0,
                color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: 'Enter amount', 
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:11.0),
            child :DropdownButton(
              value:'USD',
              hint:Text('Target'),
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem(
                  child:Text('USD'),
                  value: 'USD',
                ),
                DropdownMenuItem(
                  child:Text('KSH'),
                  value:'KSH'
                ),
              ],
              onChanged: (item){
                print(item);
              },
            )
          )
        ],
      )
    );
  }
}