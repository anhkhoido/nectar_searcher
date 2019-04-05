import 'package:flutter/material.dart';
import '../model/establishment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListEstablishments extends StatefulWidget
{
  String title;
  ListEstablishments(this.title);

  @override
  State createState() => _ListEstablishments(this.title);
}


class _ListEstablishments extends State<ListEstablishments> {

  String title;
  List<Establishment> establishments;

  _ListEstablishments(String title) {
    this.title = title;
    establishments = List<Establishment>();
  }

  @override
  void initState() {
    super.initState();
    try {
      this.getEstablishments();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<Establishment>> getEstablishments() async {
    var link = "http://anhkhoido.com/nectar_searcher/" + title.toLowerCase() + ".json";
    var response = await http.get(Uri.encodeFull(link), headers: {"Content-Type": "application/json"});
    setState(() {
      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);
        var arrayOfEstablishments = decodedResponse[title.toLowerCase()] as List;
        establishments = arrayOfEstablishments.map<Establishment>((json) => Establishment.fromJson(json)).toList();
      } else {
        print("The app could not retrieve the list of " + this.title.toLowerCase() + ".");
        Navigator.of(context).pop();
      }
    });
    print(establishments.length);
    return establishments;
  }

  Widget listViewWidget(List<Establishment> establishment) {
    return Container(
      child: ListView.builder(
          itemCount: establishment.length,
          padding: EdgeInsets.all(3.0),
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(establishment[position].name),
                subtitle: Text(establishment[position].address),
              ),
            );
          }
      ),
    );
  }

  Widget progressIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: establishments != null ? listViewWidget(establishments) : progressIndicator()
    );
  }
}