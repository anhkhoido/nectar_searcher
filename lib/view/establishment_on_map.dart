import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../model/establishment.dart';

class EstablishmentOnMap extends StatelessWidget {

  final Establishment establishment;

  EstablishmentOnMap(this.establishment);

  @override
  Widget build(BuildContext context) {

    String url = "https://maps.google.com?q=" +
                  this.establishment.name + ", " +
                  this.establishment.address + ", " +
                  this.establishment.city + ", " +
                  this.establishment.province;

    return Scaffold(
      body: _EstablishmentOnMap(url),
    );
  }
}

class _EstablishmentOnMap extends StatefulWidget {

  final String urlTowardsGoogleMaps;

  _EstablishmentOnMap(this.urlTowardsGoogleMaps);

  @override
  State createState() => _EstablishmentOnMapState(urlTowardsGoogleMaps);
}

class _EstablishmentOnMapState extends State<_EstablishmentOnMap>
{

  final String urlTowardsGoogleMaps;

  _EstablishmentOnMapState(this.urlTowardsGoogleMaps);

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
        appBar: CupertinoNavigationBar(
          middle: Text("View the map"),
        ),
        url: urlTowardsGoogleMaps
    );
  }
}