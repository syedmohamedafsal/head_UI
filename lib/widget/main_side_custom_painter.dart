//import code
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//widget code
// child: CustomPaint(
//   size: Size(WIDTH,(WIDTH*0.5833333333333334).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// ),
class RightSideCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 95, 94, 94)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8333333, size.height * 0.0742857);
    path_0.lineTo(size.width * 0.7915667, size.height * 0.1405000);
    path_0.lineTo(size.width * 0.7916167, size.height * 0.2811286);
    path_0.lineTo(size.width * 0.8064500, size.height * 0.3148571);
    path_0.lineTo(size.width * 0.8066667, size.height * 0.3845714);
    path_0.lineTo(size.width * 0.7920000, size.height * 0.4305714);
    path_0.lineTo(size.width * 0.7925000, size.height * 0.5771429);
    path_0.lineTo(size.width * 0.7508333, size.height * 0.6428571);
    path_0.lineTo(size.width * 0.7508333, size.height * 0.7857143);
    path_0.lineTo(size.width * 0.7945000, size.height * 0.8128571);
    path_0.lineTo(size.width * 0.8341667, size.height * 0.8342857);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
