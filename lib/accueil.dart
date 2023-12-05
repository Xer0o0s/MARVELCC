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
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/images/MARVELCC.png',
            width: 260.0, // Ajustez la largeur selon vos besoins
            height: 100.0, // Ajustez la hauteur selon vos besoins
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ecran 1 - Navigator',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route2');
                },
                child: const Text("Ecran 2 - ScaffoldMessenger"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.orange))),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/route3');
              },
              child: const Text("Ecran 3 - AlertDialog"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
