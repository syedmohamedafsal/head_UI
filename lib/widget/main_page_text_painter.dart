import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(158, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2075000, size.height * 0.0714286);
    path_0.lineTo(size.width * 0.2091667, size.height * 0.1428571);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.2128571);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.4300000);
    path_0.lineTo(size.width * 0.2091667, size.height * 0.5014286);
    path_0.lineTo(size.width * 0.2091667, size.height * 0.8528571);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.9300000);
    path_0.lineTo(size.width * 0.4595167, size.height * 0.9285714);
    path_0.lineTo(size.width * 0.5020167, size.height * 0.8560286);
    path_0.lineTo(size.width * 0.5823833, size.height * 0.8560286);
    path_0.lineTo(size.width * 0.6234083, size.height * 0.9276143);
    path_0.lineTo(size.width * 0.7508167, size.height * 0.9293714);
    path_0.lineTo(size.width * 0.7917333, size.height * 0.7846000);
    path_0.lineTo(size.width * 0.7918333, size.height * 0.0711143);
    path_0.lineTo(size.width * 0.2075000, size.height * 0.0714286);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 35, 35, 35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Circle

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(0, 0, 140, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6595000, size.height * 0.1294857);
    path_1.cubicTo(
        size.width * 0.6761667,
        size.height * 0.1294857,
        size.width * 0.7011667,
        size.height * 0.1494857,
        size.width * 0.7011667,
        size.height * 0.2009143);
    path_1.cubicTo(
        size.width * 0.7011667,
        size.height * 0.2294857,
        size.width * 0.6886667,
        size.height * 0.2723429,
        size.width * 0.6595000,
        size.height * 0.2723429);
    path_1.cubicTo(
        size.width * 0.6428333,
        size.height * 0.2723429,
        size.width * 0.6178333,
        size.height * 0.2509143,
        size.width * 0.6178333,
        size.height * 0.2009143);
    path_1.cubicTo(
        size.width * 0.6178333,
        size.height * 0.1723429,
        size.width * 0.6303333,
        size.height * 0.1294857,
        size.width * 0.6595000,
        size.height * 0.1294857);
    path_1.close();

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
