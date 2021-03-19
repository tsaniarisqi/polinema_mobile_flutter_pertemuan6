import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    Key key,
    @required this.newItem,
  }) : super(key: key);

  final Item newItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  newItem.title,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Image(
                  // fit: BoxFit.cover,
                  image: AssetImage(newItem.image),
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Artist: ' + newItem.artist,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Album: ' + newItem.album,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Released: ' + newItem.released.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
