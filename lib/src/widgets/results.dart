import 'package:flutter/material.dart';
import './result_item.dart';
import '../utils/bloc.dart';

class Results extends StatelessWidget {

  Widget resultItem(String name,double value,double change){
    return ResultItem(name,value,change);
  }

  listBuilder(BuildContext context){
    return StreamBuilder(
      stream: bloc.amount,
      builder: (context,snapshot){
        if(!snapshot.hasData){
          return Text('...');
        }else{
          List<Widget> coins = [];
          for(int i = 0; i < snapshot.data.length;i++){
            coins.add(resultItem(snapshot.data[i].name, snapshot.data[i].value, snapshot.data[i].change));
          }
          return Column(children:coins);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child:listBuilder(context)
    );
  }
}