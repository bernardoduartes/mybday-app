import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dogs extends StatefulWidget {
  @override
  _DogsState createState() => _DogsState();
}

class _DogsState extends State<Dogs> {
  List<String> _dogImages = new List();
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    fetchFive();

    _scrollController.addListener(() {
      print(_scrollController.position.pixels);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchFive();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _dogImages.length,
      itemBuilder: (ctx, i) {
        return Container(
          constraints: BoxConstraints.tightFor(height: 150.0),
          child: Image.network(
            _dogImages[i],
            fit: BoxFit.fitWidth,
          ),
        );
      },
    );
  }

  fetch() async {
    final response = await http.get('https://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        _dogImages.add(json.decode(response.body)['message']);
      });
    } else {
      throw Exception('Failed to load images');
    }
  }

  fetchFive() {
    for (int i = 0; i < 5; i++) {
      fetch();
    }
  }
}
