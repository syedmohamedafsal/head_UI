import 'package:flutter/material.dart';

class BehindCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(151, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3333333, size.height * 0.0700000);
    path_0.lineTo(size.width * 0.2916667, size.height * 0.1414286);
    path_0.lineTo(size.width * 0.2916667, size.height * 0.4285714);
    path_0.lineTo(size.width * 0.3325000, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.4591667, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.5714286);
    path_0.lineTo(size.width * 0.7500000, size.height * 0.5700000);
    path_0.lineTo(size.width * 0.7500000, size.height * 0.0700000);
    path_0.lineTo(size.width * 0.3333333, size.height * 0.0700000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 33, 149, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
