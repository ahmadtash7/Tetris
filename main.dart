import 'package:flutter/material.dart';
import 'menu.dart';
import 'game.dart';

const double WIDTH = 300;
const double HEIGHT = 400;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tetris",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Menu"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.blueGrey,
      body: Menu(),
    );
  }
}

class GameScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Play"),
          centerTitle: true,
          backgroundColor: Colors.blue[300]),
      backgroundColor: Colors.blueGrey,
      body: Game(),
    );
  }
}
