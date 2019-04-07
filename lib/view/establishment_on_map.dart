import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../model/establishment.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      appBar: CupertinoNavigationBar(
        middle: Text("View the map"),
      ),
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
    return WebView(
      initialUrl: urlTowardsGoogleMaps,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}