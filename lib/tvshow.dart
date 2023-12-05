import 'package:flutter/material.dart';

class TVshow extends StatefulWidget {
  const TVshow({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TVshow> createState() => _TVshowState();
}

class _TVshowState extends State<TVshow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white12,
        title: Center(
          child: Image.asset(
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
