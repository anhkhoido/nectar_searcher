import 'package:flutter/material.dart';
import 'package:nectar_searcher/model/establishment.dart';

class DisplayEstablishment extends StatelessWidget {

  final Establishment establishment;

  DisplayEstablishment(this.establishment);

  Widget columnWithDetailsAboutEstablishment(BuildContext context) {
    return Column(
      children: <Widget>[
        
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(this.establishment.name),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
        child: columnWithDetailsAboutEstablishment(context),
      ),
    );
  }
}