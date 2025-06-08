import 'package:flutter/material.dart';

// child: CustomPaint(
//   size: Size(WIDTH,(WIDTH*0.5833333333333334).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// ),


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(161, 78, 78, 78)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2925000, size.height * 0.2157143);
    path_0.lineTo(size.width * 0.2916667, size.height * 0.3585714);
    path_0.lineTo(size.width * 0.3341667, size.height * 0.4300000);
    path_0.lineTo(size.width * 0.3750000, size.height * 0.4271429);
    path_0.lineTo(size.width * 0.4584000, size.height * 0.5722000);
    path_0.lineTo(size.width * 0.5833333, size.height * 0.5717429);
    path_0.lineTo(size.width * 0.5833333, size.height * 0.2142857);
    path_0.lineTo(size.width * 0.5575000, size.height * 0.1746857);
    path_0.lineTo(size.width * 0.3846917, size.height * 0.1743857);
    path_0.lineTo(size.width * 0.3673667, size.height * 0.2003000);
    path_0.lineTo(size.width * 0.3300000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.3300500, size.height * 0.1756143);

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
