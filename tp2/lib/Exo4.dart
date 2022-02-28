import 'package:flutter/material.dart';

class Exo4 extends StatefulWidget {
  const Exo4({Key? key}) : super(key: key);

  @override
  _Exo4 createState() => _Exo4();
}


class _Exo4 extends State<Exo4> {
    Tile tile = new Tile('image/owl.jpg', Alignment(0, 0));

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Display a Tile as a Cropped Image'),
            centerTitle: true,
        ),
        body: Center(
            child: Column(children: [
            SizedBox(
                width: 150.0,
                height: 150.0,
                child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: this.createTileWidgetFrom(tile))),
            Container(
                height: 200,
                child: Image.network('image/owl.jpg',
                    fit: BoxFit.cover))
        ])),
        );
    }

    Widget createTileWidgetFrom(Tile tile) {
        return InkWell(
        child: tile.croppedImageTile(),
        onTap: () {
            print("tapped on tile");
        },
        );
    }
}


class Tile {
  String imageURL;
  Alignment alignment;

  Tile(this.imageURL, this.alignment);

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 0.3,
            heightFactor: 0.3,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}