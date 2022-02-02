import 'package:flutter/material.dart';
import 'media_model.dart';

class Films extends StatefulWidget {

    
    const Films({Key? key}) : super(key: key);
    @override
    State<Films> createState() => _Films();
}

class _Films extends State<Films> { 

    Widget createListItemFor(String s) {
        return Card(child: ListTile(title: Text(s)));
    }

    List<Widget> createListFilm() {

          return <Widget>[
                createListItemFor("Star wars"),
                createListItemFor("Seigneur des anneaux"),
                
                
          ];

    }


    @override
    Widget build(BuildContext context){
        return ListView(
            padding: const EdgeInsets.all(8),
            children: createListFilm()
        );

        }
}
