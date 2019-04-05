import 'package:flutter/material.dart';
import 'package:nectar_searcher/model/establishment.dart';

class DisplayEstablishment extends StatelessWidget {

  final Establishment establishment;

  DisplayEstablishment(this.establishment);

  Widget tableWithDetails(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
      children: [
        TableRow(children: [
          Text(
            this.establishment.name,
            style: TextDecoration(
              fon
            ),
          ),
        ]),
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
          child: tableWithDetails(context),
        ),
      )
    );
  }
}