import 'package:flutter/material.dart';

class ListEstablishments extends StatelessWidget {

  final String title;
  
  ListEstablishments(this.title);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Text("Bars to choose"),
        ],
      ),
    );
  }
}