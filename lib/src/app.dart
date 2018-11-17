import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Crypto Change',
      home:Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.5,
          leading: Icon(Icons.account_balance_wallet),
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Convert Crypto',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Sanserif',
              fontWeight: FontWeight.w400
            ),  
          ),
          centerTitle: true,
        ),
        body: HomeScreen(),
      )
    );
  }
}