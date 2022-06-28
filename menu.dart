import 'package:flutter/material.dart';
import 'package:tetris/main.dart';
import 'menuButton.dart';

class Menu extends StatefulWidget {
  State<StatefulWidget> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  void onPlayClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GameScreen()));
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Tetris",
              style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 14.0,
                        offset: Offset(14.0, 2.0))
                  ])),
          MenuButton(onPlayClicked)
        ],
      ),
    );
  }
}
