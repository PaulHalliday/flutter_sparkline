import 'dart:math';

import 'package:flutter/material.dart';

class SparklinePainter extends CustomPainter {
  List<num> data;
  Color color;
  SparklinePainter({@required this.data, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    num index = 0;
    num barSize = size.width / data.length;
    num maxValue = data.reduce(max).toDouble();

    for (num point in data) {
      num barHeight = (size.height * point / maxValue).roundToDouble();

      _drawBar(
        canvas: canvas,
        left: barSize * index,
        top: size.height - barHeight,
        width: barSize,
        height: barHeight,
      );
      index++;
    }
  }

  _drawBar({Canvas canvas, num left, num top, num width, num height}) {
    Paint paint = Paint()
      ..color = color ?? Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;

    Rect rect = Rect.fromLTWH(left, top, width, height);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
