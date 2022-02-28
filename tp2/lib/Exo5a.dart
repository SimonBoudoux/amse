import 'package:flutter/material.dart';

class Exo5a extends StatefulWidget {
  const Exo5a({Key? key}) : super(key: key);

  @override
  _Exo5a createState() => _Exo5a();
}


class _Exo5a extends State<Exo5a> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Display a GridView'),
            centerTitle: true,
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile1"),
                color: Colors.teal[100],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile2'),
                color: Colors.teal[200],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile3'),
                color: Colors.teal[300],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile4'),
                color: Colors.teal[400],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile5'),
                color: Colors.teal[500],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile6'),
                color: Colors.teal[600],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile7'),
                color: Colors.teal[700],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile8'),
                color: Colors.teal[800],
                ),
                Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Tile9'),
                color: Colors.teal[900],
                ),
            ],
            ),
        );
    }
}