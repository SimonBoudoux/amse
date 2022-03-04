import 'package:flutter/material.dart';
class Exo5c extends StatefulWidget {
    const Exo5c({Key? key}) : super(key: key);
  @override
  _Exo5cState createState() => _Exo5cState();
}

double nbre = 3;

class _Exo5cState extends State<Exo5c> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Display GridView with a picture"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 600.0,
                width: 600.0,
                child: Container(
                  child: GridView.count(
                    crossAxisCount: nbre.round(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      for (int i=0; i<nbre; i++)
                        for (int j=0; j<nbre; j++)
                          this.createtile(Tile('image/owl.jpg', Alignment(-1.0+j*2/(nbre-1),-1.0+i*2/(nbre-1))))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text('Division : '),
              Slider(
                  max: 10,
                  min: 2,
                  divisions: 8,
                  value: nbre,
                  onChanged: (double value){
                    setState(() {
                      nbre = value;
                    });
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget createtile(Tile tile) {
    return InkWell(
      child: tile.croppedtile(),
    );
  }
}

class Tile {
  String image;
  Alignment alignment;

  Tile(this.image, this.alignment);

  Widget croppedtile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 1/nbre,
            heightFactor: 1/nbre,
            child: Image.network(this.image),
          ),
        ),
      ),
    );
  }
}


