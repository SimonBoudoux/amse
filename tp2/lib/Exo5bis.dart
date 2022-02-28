import 'package:flutter/material.dart';

class Exo5b extends StatefulWidget {
  const Exo5b({Key? key}) : super(key: key);

  @override
  State<Exo5b> createState() => _Exo5b();
}

class _Exo5b extends State<Exo5b> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Display a GridView'),
            centerTitle: true,
        ),
        body : Container(
            child: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                    tile[0],
                    tile[1],
                ],
            ),
        )
        );  
    }
}    

final List<Tile> tile = [
  Tile(Alignment.topLeft, 'image/owl.jpg',
    ),
    Tile(Alignment.topCenter,'image/owl.jpg',
    ),
    Tile(Alignment.topRight,'image/owl.jpg',
    ),
    Tile(Alignment.centerLeft,'image/owl.jpg',
    ),
    Tile(Alignment.center,'image/owl.jpg',
    ),
    Tile(Alignment.centerRight,'image/owl.jpg',
    ),
    Tile(Alignment.bottomLeft,'image/owl.jpg',
    ),
    Tile(Alignment.bottomCenter,'image/owl.jpg',
    ),
    Tile(Alignment.bottomRight,'image/owl.jpg',
    ),
];

class Tile {
  String alignment;
  Alignment imageURL;

  Tile(this.alignment, this.imageURL);

  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Align(
          alignment: alignment,
          widthFactor: 0.3,
          heightFactor: 0.3,
          child: Image.network(imageURL),
        ),
      ),
    );
  }
}

