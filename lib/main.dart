import 'package:flutter/material.dart';

import 'accueil.dart';
import 'comics.dart';
import 'personnages.dart';
import 'films.dart';
import 'jeux.dart';
import 'tvshow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'routes',
      home: const Accueil(title: 'Navigation'),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => Accueil(title: 'Accueil'),
        '/route2': (BuildContext context) => Comics(title: 'Commics'),
        '/route3': (BuildContext context) => Personnages(title: 'Personnages'),
        '/route4': (BuildContext context) => Films(title: 'Films'),
        '/route5': (BuildContext context) => TVshow(title: 'TV Show'),
        '/route6': (BuildContext context) => Jeux(title: 'Jeux'),
      },
    );
  }
}
