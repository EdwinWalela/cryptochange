import 'package:flutter/material.dart';
import './result_item.dart';

class Results extends StatelessWidget {

  listBuilder(){
    List<Widget> items = [];
    for(int i = 0; i < 5; i++){
      items.add(ResultItem());
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:listBuilder()
      )
    );
  }
}