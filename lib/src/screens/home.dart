import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/results.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child:Container(
        height: MediaQuery.of(context).size.height*1.4,
        child:Column(
          children: <Widget>[
            SearchBar(),
            Container(margin: EdgeInsets.only(top:50.0),),
            Results()
          ],
        ),
      )
    );
  }
}