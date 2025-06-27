import 'package:flutter/material.dart';

// class LeftSideCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1

//     Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(255, 95, 94, 94)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.2500000, size.height * 0.9285714);
//     path_0.lineTo(size.width * 0.2494417, 0);
//     path_0.lineTo(size.width * 0.2908333, size.height * 0.0728571);
//     path_0.lineTo(size.width * 0.3328417, size.height * 0.1459714);
//     path_0.lineTo(size.width * 0.3333750, size.height * 0.2853857);
//     path_0.lineTo(size.width * 0.2913000, size.height * 0.3563286);
//     path_0.lineTo(size.width * 0.2919667, size.height * 0.4267000);
//     path_0.lineTo(size.width * 0.3333333, size.height * 0.5014286);
//     path_0.lineTo(size.width * 0.3331417, size.height * 0.6414286);
//     path_0.lineTo(size.width * 0.2918000, size.height * 0.7116571);
//     path_0.lineTo(size.width * 0.2919667, size.height * 0.7845714);
//     path_0.lineTo(size.width * 0.3333333, size.height * 0.8557143);
//     path_0.lineTo(size.width * 0.3333333, size.height);

//     canvas.drawPath(path_0, paint_fill_0);

//     // Layer 1

//     Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(0, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_0, paint_stroke_0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
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
    path_0.moveTo(size.width * 0.2503500, size.height * 0.8585857);
    path_0.lineTo(size.width * 0.2494417, 0);
    path_0.lineTo(size.width * 0.3338250, size.height * 0.0717857);
    path_0.lineTo(size.width * 0.3333750, size.height * 0.2103429);
    path_0.lineTo(size.width * 0.3074583, size.height * 0.2420429);
    path_0.lineTo(size.width * 0.3079750, size.height * 0.3237000);
    path_0.lineTo(size.width * 0.3328417, size.height * 0.3575429);
    path_0.lineTo(size.width * 0.3336333, size.height * 0.5000143);
    path_0.lineTo(size.width * 0.3073417, size.height * 0.5280571);
    path_0.lineTo(size.width * 0.3083583, size.height * 0.6089000);
    path_0.lineTo(size.width * 0.3331750, size.height * 0.6439000);
    path_0.lineTo(size.width * 0.3327417, size.height * 0.7869857);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 20, 35, 46)
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
