import 'package:flutter/material.dart';
import 'media_model.dart';

class Filmclick extends StatelessWidget {

  final MediaModel liste_film;

  const Filmclick(this.liste_film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(liste_film.nom),
        backgroundColor: Colors.blue[900],
      ),
      body : SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
                child: Image.network(liste_film.url)),
            SizedBox(
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(liste_film.nom, style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(liste_film.description, textAlign: TextAlign.justify),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class Mangaclick extends StatelessWidget {

  final MediaModel liste_manga;

  const Mangaclick(this.liste_manga);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(liste_manga.nom),
        backgroundColor: Colors.red[900],
      ),
      body : SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
                child: Image.network(liste_manga.url)),
            SizedBox(
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(liste_manga.nom, style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(liste_manga.description, textAlign: TextAlign.justify),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
class Contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.blue[900],
      ),
      body : 
        Text(
              'mail : simon.boudoux@etu.imt-nord-europe.fr',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2,
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
        
    );
  }
}