import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _search;
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if(_search == null){
      response = await http.get("https://api.giphy.com/v1/gifs/trending?api_key=j6Rwq6pO2ApiI18hGgO4fGnLHikIGt5c&limit=15&rating=G");
    }else{
      response = await http.get("https://api.giphy.com/v1/gifs/search?api_key=j6Rwq6pO2ApiI18hGgO4fGnLHikIGt5c&q=$_search&limit=15&offset=$_offset&rating=G&lang=pt");
    }

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
