import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sparkline/sparkline_painter.dart';

class SparklineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      child: CustomPaint(
        painter: SparklinePainter(
          color: Color(0xFF00a7cf),
          data: List.generate(
            40,
            (index) {
              Random rnd = Random();
              return rnd.nextInt(20) + 6;
            },
          ),
        ),
      ),
    );
  }
}
