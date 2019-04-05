import 'package:flutter/material.dart';
import 'package:nectar_searcher/model/establishment.dart';

class DisplayEstablishment extends StatelessWidget {

  final Establishment establishment;

  DisplayEstablishment(this.establishment);

  Widget listViewWithDetails(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text(
          this.establishment.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        SizedBox(height: 5.0,),
        Text(
          this.establishment.address,
          style: TextStyle(
            fontSize: 17.0
          ),
        ),
        SizedBox(height: 25.0,),
        Text(
          "Nearest major intersection",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            background: Paint()..color = Colors.green[700],
            color: Colors.white,
          ),
        ),
        Text(
          this.establishment.intersection,
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
        SizedBox(height: 25.0,),
        Text(
          "Opening hours"
        ),
        SizedBox(height: 25.0,),
        Text(
          "Public transportation"
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Details"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: listViewWithDetails(context),
        ),
      )
    );
  }
}