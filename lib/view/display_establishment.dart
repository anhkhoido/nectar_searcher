import 'package:flutter/material.dart';
import '../model/establishment.dart';

class DisplayEstablishment extends StatelessWidget {

  final Establishment establishment;

  DisplayEstablishment(this.establishment);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(establishment.name),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        ],
      ),
    );
  }
}