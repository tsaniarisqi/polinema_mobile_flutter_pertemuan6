import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item newItem;
  // konstruktor
  ItemPage({Key key, this.newItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shopping List"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text(newItem.name+" : " + newItem.price.toString()),
        ),
      ),
    );
  }
}
