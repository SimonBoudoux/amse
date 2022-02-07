import 'package:flutter/material.dart';
import 'testpage.dart';


class About extends StatefulWidget {
    const About({Key? key}) : super(key: key);
    @override
    State<About> createState() => _About();
}
class _About extends State<About>{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Presentation App and me"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Simon BOUDOUX',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Student at IMT Nord Europe',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Computer Engineering and Industry and Services',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  color: Colors.orange,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Il s'agit d'une application regroupant divers oeuvres de cinémas et mangas pour en faire une séléction de recommandation. Toutefois il s'agit des gouts de l'auteur de cette application.",
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  color: Colors.orange,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Contact()),
                        );
                      },
                      child: ListTile(
                          title: Text('Contact',
                              style: TextStyle(fontSize: 18)),
                          ),
                          
                    ),
          ],
        ),
      ),
    );
  }
}