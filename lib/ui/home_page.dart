
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _search;
  int _offset = 0;
  Uri urlTreading = Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=QSX1BUjU4QJnHTIUBLvxCc24R8PZmcze&limit=20&rating=g");
  Future<Map> _getGifs() async {
    http.Response response;
    if(_search == null) {
      response = await http.get(urlTreading);
    } else {
      Uri urlSearch = Uri.parse("https://api.giphy.com/v1/gifs/search?api_key=QSX1BUjU4QJnHTIUBLvxCc24R8PZmcze&q=$_search&limit=20&offset=$_offset&rating=g&lang=en");
      response = await http.get(urlSearch);
    }
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    _getGifs().then((map) => print(map));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network("https://developers.giphy.com/static/img/dev-logo-lg.gif"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Pesquise aqui",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder()
              ),
              style: TextStyle(color: Colors.white, fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
