import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PieChart extends CustomPainter {
  final double width;

  PieChart({
    required this.width,
  });
  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.width / 2, size.height / 2);
    var radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    final npsSCategories = [
      NpsSCategory('critical', value: 100),
      NpsSCategory('improvement', value: 50),
      NpsSCategory('quality', value: 25),
      NpsSCategory('excellence', value: 25),
    ];
    final gaugeColors = [
      criticalZoneColor,
      improvementZoneColor,
      qualityZoneColor,
      zoneOfExcellenceColor,
    ];

    var total = 0.0;
    // ignore: avoid_function_literals_in_foreach_calls
    npsSCategories.forEach((element) => total += element.value);

    var startRadian = -pi;
    for (var index = 0; index < npsSCategories.length; index++) {
      final currentCategory = npsSCategories.elementAt(index);
      var sweepRadian = currentCategory.value / total * pi;
      paint.color = gaugeColors.elementAt(index % npsSCategories.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class NpsSCategory {
  NpsSCategory(this.zone, {required this.value});
  final String zone;
  final double value;
}
