import 'package:flutter/material.dart';
import 'media_model.dart';
import 'testpage.dart';

class Films extends StatefulWidget {

    
    const Films({Key? key}) : super(key: key);
    @override
    State<Films> createState() => _Films();
}

class _Films extends State<Films> { 
    @override
    Widget build(BuildContext context){
      return Scaffold(
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: List.generate(
              liste_film.length,
              (index) => Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Filmclick(liste_film[index])),
                        );
                      },
                      child: ListTile(
                          title: Text(liste_film[index].nom,
                              style: TextStyle(fontSize: 18)),
                          subtitle: Text(liste_film[index].intro,
                              style: TextStyle(fontSize: 10)),
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(),
                            child: Image.network(liste_film[index].url,
                                fit: BoxFit.cover),
                          ),
                          
                    ),
                  )))));
      }
}

