import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';

class ListOnHomepage extends StatelessWidget {
  const ListOnHomepage({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(item.image),
              height: 50,
              width: 50,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  item.artist,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
