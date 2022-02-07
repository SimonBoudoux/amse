import 'package:flutter/material.dart';
import 'media_model.dart';
import 'testpage.dart';

class Manga extends StatefulWidget {

    
    const Manga({Key? key}) : super(key: key);
    @override
    State<Manga> createState() => _Manga();
}

class _Manga extends State<Manga> { 

    @override
    Widget build(BuildContext context){
        return Scaffold(
        body: ListView(
            padding: const EdgeInsets.all(8),
            children: List.generate(
                liste_manga.length,
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
                                    Mangaclick(liste_manga[index])),
                          );
                        },
                        child: ListTile(
                            title: Text(liste_manga[index].nom,
                                style: TextStyle(fontSize: 18)),
                            subtitle: Text(liste_manga[index].intro,
                                style: TextStyle(fontSize: 10)),
                            leading: ConstrainedBox(
                              constraints: BoxConstraints(),
                              child: Image.network(liste_manga[index].url,
                                  fit: BoxFit.cover),
                            )),
                      ),
                    ))));
  }
}