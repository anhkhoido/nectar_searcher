import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../model/establishment.dart';

class EstablishmentOnMap extends StatelessWidget {

  final Establishment establishment;

  EstablishmentOnMap(this.establishment);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _EstablishmentOnMap("https://www.google.com/maps/place/" +
                                this.establishment.name.replaceAll(RegExp(r' '), "+") +
                                "/@" + this.establishment.latitude.toString() + "," +
                                this.establishment.longitude.toString() + "z/"),
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
          middle: Text("Your bar on the map"),
        ),
        url: urlTowardsGoogleMaps
    );
  }
}