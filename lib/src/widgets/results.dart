import 'package:flutter/material.dart';
import './result_item.dart';
import '../utils/bloc.dart';

class Results extends StatelessWidget {

  Widget resultItem(String name,double value){
    return ResultItem(name,value);
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
            coins.add(resultItem(snapshot.data[i].name, snapshot.data[i].value));
          }
          return ListView(children:coins,);
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