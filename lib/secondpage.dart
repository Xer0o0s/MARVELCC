import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            //ajoute une image a la navbar
            'assets/images/MARVELCC.png',
            width: 260.0, // Ajustez la largeur selon vos besoins
            height: 100.0, // Ajustez la hauteur selon vos besoins
          ),
        ),
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
                  // Action lorsque l'icône Accueil est pressée
                },
              ),
              IconButton(
                icon: Icon(Icons.),
                onPressed: () {
                  // Action lorsque l'icône Accueil est pressée
                },
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Action lorsque l'icône Accueil est pressée
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Action lorsque l'icône Recherche est pressée
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  // Action lorsque l'icône Paramètres est pressée
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
