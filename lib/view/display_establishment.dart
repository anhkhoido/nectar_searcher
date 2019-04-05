import 'package:flutter/material.dart';
import 'package:nectar_searcher/model/establishment.dart';

class DisplayEstablishment extends StatelessWidget {

  final Establishment establishment;

  DisplayEstablishment(this.establishment);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(this.establishment.name),
      ),
    );
  }
}