import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Blue Jeans',
      artist: 'Gangga',
      album: 'Blue Jeans',
      released: 2020,
      image: 'assets/images/blueJeans.jpg',
    ),
    Item(
      title: 'Campfire',
      artist: 'Seventeen',
      album: 'Teen, Age',
      released: 2017,
      image: 'assets/images/teenAge.jpg',
    ),
    Item(
      title: 'Do Re Mi',
      artist: 'Seventeen',
      album: ';[Semicolon]',
      released: 2020,
      image: 'assets/images/semicolon.jpg',
    ),
    Item(
      title: 'HOME;RUN',
      artist: 'Seventeen',
      album: ';[Semicolon]',
      released: 2020,
      image: 'assets/images/semicolon.jpg',
    ),
    Item(
      title: 'Last Goodbay',
      artist: 'Akmu',
      album: 'Winter',
      released: 2017,
      image: 'assets/images/winter.jpg',
    ),
    Item(
      title: 'Left & Right',
      artist: 'Seventeen',
      album: 'Heng:garæ',
      released: 2020,
      image: 'assets/images/henggaræ.jpg',
    ),
    Item(
      title: 'Light a Flame',
      artist: 'Seventeen',
      album: ';[Semicolon]',
      released: 2020,
      image: 'assets/images/semicolon.jpg',
    ),
    Item(
      title: 'Puzzel Piece',
      artist: 'NCT Dream',
      album: 'Reload',
      released: 2020,
      image: 'assets/images/reload.jpg',
    ),
    Item(
      title: 'Switchblades',
      artist: 'Niki',
      album: 'Moonchild',
      released: 2020,
      image: 'assets/images/moonchild.jpg',
    ),
    Item(
      title: 'Time of Our Life',
      artist: 'Day6',
      album: 'The Book of Us: Gravity',
      released: 2017,
      image: 'assets/images/The_Book_of_Us_Gravity.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Song List"),
          backgroundColor: Colors.red[300],
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length, // untuk perulangan sebanyak itemnya
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/item');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemPage(
                        newItem: item,
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Container(
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
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
