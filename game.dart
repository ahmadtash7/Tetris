import 'package:flutter/material.dart';
import 'main.dart';
import 'actionButton.dart';

enum LastButtonPressed { LEFT, RIGHT, ROTATE, NONE }
enum MoveDir {LEFT, RIGHT, DOWN}

class Game extends StatefulWidget {
  State<StatefulWidget> createState() => _Game();
}

class _Game extends State<Game> {
  LastButtonPressed performAction = LastButtonPressed.NONE;

  void onActionButtonPressed(LastButtonPressed newAction) {
    setState(() {
      performAction = newAction;
      print(performAction.toString());
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            width: WIDTH,
            height: HEIGHT,
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton(onActionButtonPressed, Icon(Icons.arrow_left),
                LastButtonPressed.LEFT),
            ActionButton(onActionButtonPressed, Icon(Icons.arrow_right),
                LastButtonPressed.RIGHT),
            ActionButton(onActionButtonPressed,
                Icon(Icons.rotate_90_degrees_ccw), LastButtonPressed.ROTATE),
          ],
        )
      ],
    );
  }
}
