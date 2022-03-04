import 'package:flutter/material.dart';
import 'Exo2.dart';
import 'Exo4.dart';
import 'Exo5a.dart';
import 'Exo5b.dart';
import 'Exo5c.dart';
import 'Exo6a.dart';


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
                    InkWell(
                        child: Container(child: Text('Exo4',textScaleFactor: 4.0,)),
                        onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Exo4()),
                            );
                        },
                        splashColor: Colors.blue,
                    ),
                    InkWell(
                        child: Container(child: Text('Exo5a',textScaleFactor: 4.0,)),
                        onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Exo5a()),
                            );
                        },
                        splashColor: Colors.blue,
                    ),
                    InkWell(
                        child: Container(child: Text('Exo5b',textScaleFactor: 4.0,)),
                        onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Exercice5b()),
                            );
                        },
                        splashColor: Colors.blue,
                    ),
                    InkWell(
                        child: Container(child: Text('Exo5c',textScaleFactor: 4.0,)),
                        onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Exo5c()),
                            );
                        },
                        splashColor: Colors.blue,
                    ),
                    InkWell(
                        child: Container(child: Text('Exo6a',textScaleFactor: 4.0,)),
                        onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Exo6a()),
                            );
                        },
                        splashColor: Colors.blue,
                    ),
                ],
            )
        );
    }

}