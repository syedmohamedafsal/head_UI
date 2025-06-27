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
      ..color = const Color.fromARGB(205, 81, 79, 79)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0825000, size.height * 0.2157143);
    path_0.lineTo(size.width * 0.0833333, size.height * 0.5685714);
    path_0.lineTo(size.width * 0.2044000, size.height * 0.7139571);
    path_0.lineTo(size.width * 0.3330083, size.height * 0.7167286);
    path_0.lineTo(size.width * 0.4131333, size.height * 0.8571429);
    path_0.lineTo(size.width * 0.7105333, size.height * 0.8576857);
    path_0.lineTo(size.width * 0.7089250, size.height * 0.1414286);
    path_0.lineTo(size.width * 0.6622333, size.height * 0.0697286);
    path_0.lineTo(size.width * 0.3446000, size.height * 0.0715571);
    path_0.lineTo(size.width * 0.3326583, size.height * 0.1175000);
    path_0.lineTo(size.width * 0.2168250, size.height * 0.1181286);
    path_0.quadraticBezierTo(size.width * 0.2174417, size.height * 0.0306143,
        size.width * 0.1769917, size.height * 0.0937286);
    path_0.quadraticBezierTo(size.width * 0.1739333, size.height * 0.0937714,
        size.width * 0.0825000, size.height * 0.2157143);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(205, 81, 79, 79)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0807667, size.height * 0.2172000);
    path_1.lineTo(size.width * 0.0833333, size.height * 0.2040286);
    path_1.quadraticBezierTo(size.width * 0.1633583, size.height * 0.0971286,
        size.width * 0.1942917, size.height * 0.0658571);
    path_1.quadraticBezierTo(size.width * 0.2104667, size.height * 0.0326429,
        size.width * 0.2249833, size.height * 0.1093000);
    path_1.lineTo(size.width * 0.2585583, size.height * 0.1092714);
    path_1.lineTo(size.width * 0.2983333, size.height * 0.1100000);
    path_1.lineTo(size.width * 0.3275000, size.height * 0.1100000);
    path_1.lineTo(size.width * 0.3396417, size.height * 0.0649000);
    path_1.lineTo(size.width * 0.3725333, size.height * 0.0651571);
    path_1.lineTo(size.width * 0.4039583, size.height * 0.0644286);
    path_1.lineTo(size.width * 0.6675000, size.height * 0.0642857);
    path_1.lineTo(size.width * 0.7100000, size.height * 0.1314286);
    path_1.lineTo(size.width * 0.7083333, size.height * 0.2142857);

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(0, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
