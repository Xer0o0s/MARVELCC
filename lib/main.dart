import 'package:flutter/material.dart';

import 'accueil.dart';
import 'comics.dart';
import 'personnages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Accueil(title: 'Flutter Navigation'),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => Accueil(title: 'Accueil'),
        '/route2': (BuildContext context) => Comics(title: 'Page 2'),
        '/route3': (BuildContext context) => Personnages(title: 'Page 3'),
        '/route4': (BuildContext context) => Films(title: 'Films'),
        '/route5': (BuildContext context) => TVshow(title: 'TV Show'),
        '/route6': (BuildContext context) => Jeux(title: 'Jeux'),
      },
    );
  }
}
