import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  Function onClickedFunction;

  MenuButton(this.onClickedFunction);

  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 60,
      minWidth: 200,
      child: RaisedButton(
          onPressed: () {
            onClickedFunction();
          },
          color: Colors.blue[300],
          child: Icon(Icons.play_arrow)),
    );
  }
}
