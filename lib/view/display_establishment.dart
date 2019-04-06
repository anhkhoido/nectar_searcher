import 'package:flutter/material.dart';
import 'package:nectar_searcher/model/establishment.dart';
import 'establishment_on_map.dart';

class DisplayEstablishment extends StatelessWidget {

  final Establishment establishment;

  DisplayEstablishment(this.establishment);

  Widget tableWithOpeningHours() {
    return Container(
      // height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Table(
          border: TableBorder.all(width: 0.0),
          children: [
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Sunday",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Text(this.establishment.sunday,
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Monday",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Text(this.establishment.monday,
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "Tuesday",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Text(this.establishment.tuesday,
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Wednesday",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Text(this.establishment.wednesday,
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Thursday",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Text(this.establishment.thursday,
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Friday",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                        Text(this.establishment.friday,
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "Saturday",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Text(
                          this.establishment.saturday,
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )
                ]
            ),
          ],
        ),
      ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15.0,),
            Text(
              this.establishment.name,
              style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              this.establishment.address,
              style: TextStyle(fontSize: 18.0,),
            ),
            SizedBox(height: 25.0,),
            Text(
              "Nearest important intersection",
              style: TextStyle(
                  background: Paint()..color.green,
                  color: Colors.white,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              this.establishment.intersection,
              style: TextStyle(fontSize: 18.0,),
            ),
            SizedBox(height: 25.0,),
            Text(
              "Opening hours",
              style: TextStyle(
                background: Paint()..color.green,
                color: Colors.white,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            tableWithOpeningHours(),
            SizedBox(height: 25.0,),
            Text(
              "Subway Station",
              style: TextStyle(
                  background: Paint()..color.green,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0
              ),
            ),
            Text(
              this.establishment.subwayStation,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 25.0,),
            RaisedButton(
              color: Colors.green[700],
              child: Text("Display on a map"),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EstablishmentOnMap()))
              },
            )
          ],
        ),
      ),
    );
  }
}