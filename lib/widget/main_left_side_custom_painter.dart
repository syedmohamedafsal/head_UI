import 'package:flutter/material.dart';

//import for left side
// import 'dart:ui' as ui;

// custom widget
// child: CustomPaint(
//   size: Size(WIDTH,(WIDTH*0.5833333333333334).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// ),

class LeftSideCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 95, 94, 94)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5825000, size.height * 0.0728571);
    path_0.lineTo(size.width * 0.6258333, size.height * 0.1457143);
    path_0.lineTo(size.width * 0.6258333, size.height * 0.2857143);
    path_0.lineTo(size.width * 0.6108333, size.height * 0.3119429);
    path_0.lineTo(size.width * 0.6104667, size.height * 0.3849143);
    path_0.lineTo(size.width * 0.6258333, size.height * 0.4300000);
    path_0.lineTo(size.width * 0.6258333, size.height * 0.5714286);
    path_0.lineTo(size.width * 0.6666667, size.height * 0.6428571);
    path_0.lineTo(size.width * 0.6666667, size.height * 0.7842857);
    path_0.lineTo(size.width * 0.5830167, size.height * 0.8320857);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
