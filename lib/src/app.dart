import 'package:flutter/material.dart';
import './screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Crypto Converter',
      home:Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leading: Icon(Icons.account_balance_wallet),
          backgroundColor: Colors.deepPurple,
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