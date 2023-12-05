import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(47, 47, 47, 1),
        title: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.asset(
              'assets/images/MARVELCC.png',
              width: 220.0, // Ajustez la largeur selon vos besoins
              height: 50.0, // Ajustez la hauteur selon vos besoins
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, '/route1');
                },
              ),
              IconButton(
                icon: Icon(Icons.book_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, '/route2');
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, '/route3');
                },
              ),
              IconButton(
                icon: Icon(Icons.video_camera_back),
                onPressed: () {
                  Navigator.pushNamed(context, '/route4');
                },
              ),
              IconButton(
                icon: Icon(Icons.movie),
                onPressed: () {
                  Navigator.pushNamed(context, '/route5');
                },
              ),
              IconButton(
                icon: Icon(Icons.gamepad),
                onPressed: () {
                  Navigator.pushNamed(context, '/route6');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
