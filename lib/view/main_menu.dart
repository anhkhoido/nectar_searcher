import 'dart:core';
import 'package:flutter/material.dart';
import 'package:nectar_searcher/view/list_establishments.dart';

class MainMenu extends StatelessWidget {

  final String title;

  MainMenu(this.title);

  Widget buttonForMenuOfBars(BuildContext context) {
    return RaisedButton(
            child: Image.asset('assets/bar_button.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListEstablishments("Bars"))
              );
            }
    );
  }

  Widget buttonForBrewpubs(BuildContext context) {
    return RaisedButton(
      child: Image.asset('assets/brewpubs_button.png'),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ListEstablishments("Brewpubs")));
      },
    );
  }

  Widget buttonForMenuOfPubs(BuildContext context) {
    return RaisedButton(
      child: Image.asset('assets/pubs_button.png'),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ListEstablishments("Pubs")));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buttonForMenuOfBars(context),
          ],
        ),
      ),
    );
  }
}