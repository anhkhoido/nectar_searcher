import 'package:flutter/material.dart';
import 'dart:core';
import 'view/main_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nectar Searcher',
      home: MainMenu('Nectar Searcher'),
    );
  }
}