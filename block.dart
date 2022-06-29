import 'package:tetris/game.dart';

import 'point.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Block {
  List<Point> points = List<Point>(4);
  Point? rotationCenter;
  Color? color;

  void move(MoveDir direction) {
    switch (direction) {
      case MoveDir.LEFT:
        points.forEach((p) => p.x -= 1);
        break;
      case MoveDir.RIGHT:
        points.forEach((p) => p.x += 1);
        break;
      case MoveDir.DOWN:
        points.forEach((p) => p.y -= 1);
        break;
    }
  }

  void rotateRight() {
    points.forEach((point) {
      int x = point.x;
      point.x = rotationCenter?.x - point.y + rotationCenter?.y;
      point.y = rotationCenter.y + x - rotationCenter.x;
    });
  }

  void rotateLeft() {
    points.forEach((point) {
      int x = point.x;
      point.x = rotationCenter?.x + point.y - rotationCenter?.y;
      point.y = rotationCenter.y - x + rotationCenter.x;
    });
  }
}
