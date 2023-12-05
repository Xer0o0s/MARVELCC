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
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
        title: Center(
          child: Container(
            padding: const EdgeInsets.only(bottom: 10.0),
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
        color: const Color.fromRGBO(33, 33, 33, 1),
        height: 50,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, '/route1');
                },
              ),
              IconButton(
                icon: const Icon(Icons.book_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, '/route2');
                },
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, '/route3');
                },
              ),
              IconButton(
                icon: const Icon(Icons.video_camera_back),
                onPressed: () {
                  Navigator.pushNamed(context, '/route4');
                },
              ),
              IconButton(
                icon: const Icon(Icons.movie),
                onPressed: () {
                  Navigator.pushNamed(context, '/route5');
                },
              ),
              IconButton(
                icon: const Icon(Icons.gamepad),
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
