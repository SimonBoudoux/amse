import 'package:flutter/material.dart';

class Exercice5b extends StatefulWidget {
  const Exercice5b({Key? key}) : super(key: key);

  @override
  State<Exercice5b> createState() => _Exercice5bState();
}

class _Exercice5bState extends State<Exercice5b> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Display a GridView with a picture"),centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              tile[0],
              tile[1],
              tile[2],
              tile[3],
              tile[4],
              tile[5],
              tile[6],
              tile[7],
              tile[8],
            ],
          ),
        ));
  }
}

final List<Tile> tile = [
    Tile(Alignment.topLeft, 'image/owl.jpg',),
    Tile(Alignment.topCenter,'image/owl.jpg',),
    Tile(Alignment.topRight,'image/owl.jpg',),
    Tile(Alignment.centerLeft,'image/owl.jpg',),
    Tile(Alignment.center,'image/owl.jpg',),
    Tile(Alignment.centerRight,'image/owl.jpg',),
    Tile(Alignment.bottomLeft,'image/owl.jpg',),
    Tile(Alignment.bottomCenter,'image/owl.jpg',),
    Tile(Alignment.bottomRight,'image/owl.jpg',),
  ];

class Tile extends StatelessWidget {
    Alignment alignment;
    String image;

    Tile(this.alignment, this.image);

    @override
    Widget build(BuildContext context) {
        return FittedBox(
            fit: BoxFit.fill,
            child: ClipRect(
                child: Align(
                    alignment: alignment,
                    widthFactor: 0.3,
                    heightFactor: 0.3,
                    child: Image.network(image),
                ),
            ),
        );
    }
}