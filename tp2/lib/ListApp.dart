import 'package:flutter/material.dart';
import 'Exo2.dart';

class ListApp extends StatefulWidget {
  const ListApp({Key? key}) : super(key: key);

  @override
  State<ListApp> createState() => _ListApp();
}

class _ListApp extends State<ListApp> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('TP2'),
            ),
            body: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                    InkWell(
                        child: Container(child: Text('Exo2',textScaleFactor: 4.0,)),
                        onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Exo2()),
                            );
                        },
                        splashColor: Colors.blue,
                    ),
                ],
            )
        );
    }

}