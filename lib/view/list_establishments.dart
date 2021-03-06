import 'package:flutter/material.dart';
import '../model/establishment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'display_establishment.dart';

class ListEstablishments extends StatefulWidget
{
  final String title;
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
      Navigator.of(context).pop();
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
        Navigator.of(context).pop();
      }
    });
    return establishments;
  }
  
  Widget listViewWidget(BuildContext context, List<Establishment> establishment) {
    return Container(
      child: ListView.builder(
          itemCount: establishment.length,
          padding: EdgeInsets.all(3.0),
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(establishment[position].name),
                subtitle: Text(establishment[position].address),
                enabled: true,
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayEstablishment(establishment[position]
                          )
                      )
                  )
                },
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
      body: establishments != null ? listViewWidget(context, establishments) : progressIndicator()
    );
  }
}