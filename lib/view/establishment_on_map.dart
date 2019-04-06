import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EstablishmentOnMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  }
}

class _EstablishmentOnMap extends StatefulWidget {
  @override
  State createState() => _EstablishmentOnMapState();
}

class _EstablishmentOnMapState extends State<_EstablishmentOnMap>
{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("Profile"),
      ),
    );
  }
}