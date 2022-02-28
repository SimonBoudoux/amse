import 'package:flutter/material.dart';

class Exo5c extends StatefulWidget {
  const Exo5c({Key? key}) : super(key: key);

  @override
  State<Exo5c> createState() => _Exo5c();
}

class _Exo5c extends State<Exo5c> {
    double nbre = 2;
    final List<Tile> tile = [];

    @override
    Widget build(BuildContext context) {
        createtile(nbre);
        return Scaffold(
            appBar: AppBar(
                title: const Text("Display a GridView with a picture"),centerTitle: true,
            ),
            body: Center(
                child: Column(children: [
                    SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: Container(
                            margin: EdgeInsets.all(20.0),
                            child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                ),
                                itemCount: tile.length,
                                itemBuilder: (BuildContext context, int index) {
                                    return createTileWidgetFrom(tile[index]);
                                }
                            ),
                        )
                    ),
                    Container(
                        child: Row(children:[
                            const Text("Divisions : "),
                            Expanded(
                                child: Slider(
                                value: nbre,
                                min: 2,
                                max: 10,
                                divisions: 8,
                                activeColor: Colors.blue,
                                onChanged: (double value) {
                                    setState(() {
                                    nbre = value;
                                    });
                                },
                                ),
                            ),
                        ],
                        ),
                        padding: const EdgeInsets.all(10),
                    ),
                ]
            )
            ),
            );
    }
    Widget createTileWidgetFrom(Tile tile) {
        return InkWell(
        child: tile,
        );
    }
}

void createtile(double a){
    final List<Tile> tile=[];
    for (int i = 0; i < a; i++){
        for(int j = 0; j<a; j++){
            tile.add(Tile(Alignment(-1+(2*j/a),-1+(2*i/a)),'image/owl.jpg',1/a));
        }
    }
}


class Tile extends StatelessWidget {
    Alignment alignment;
    String image;
    double factor;

    Tile(this.alignment, this.image, this.factor);

    @override
    Widget build(BuildContext context) {
        return FittedBox(
            fit: BoxFit.fill,
            child: ClipRect(
                child: Align(
                    alignment: alignment,
                    widthFactor: factor,
                    heightFactor: factor,
                    child: Image.network(image),
                ),
            ),
        );
    }
}