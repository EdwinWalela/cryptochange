import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/5,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.deepOrange
      ),
      child: Text('item 1'),
    );
  }
}