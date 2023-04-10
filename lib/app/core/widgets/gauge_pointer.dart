import 'dart:math';

import 'package:flutter/material.dart';

class GaugePointer extends CustomPainter {
  final int npsS;
  final double width;

  GaugePointer({
    required this.npsS,
    required this.width,
  });
  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.width / 2, size.height / 2);
    var radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    var total = 200;
    var startRadian = -pi;
    paint.color = Colors.transparent;
    var sweepRadian = (npsS + 99.5) / total * pi;
    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: radius,
      ),
      startRadian,
      sweepRadian,
      false,
      paint,
    );
    startRadian += sweepRadian;
    paint.color = Colors.black;
    sweepRadian = 1 / total * pi;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startRadian,
      sweepRadian,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
