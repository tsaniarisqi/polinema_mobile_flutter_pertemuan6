import 'package:belanja/models/item.dart';
import 'package:belanja/pages/details.dart';
import 'package:belanja/pages/home_pages.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item newItem;
  // konstruktor
  ItemPage({Key key, this.newItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Details"),
          backgroundColor: Colors.red[300],
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Details(newItem: newItem),
        ),
      ),
    );
  }
}
