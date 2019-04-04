import 'dart:core';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {

  final String title;

  MainMenu(this.title);

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
            Text('Main menu'),
          ],
        ),
      ),
    );
  }
}