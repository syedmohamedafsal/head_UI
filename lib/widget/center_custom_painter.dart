import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



  // Layer 1

  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.2489333,size.height*0.1432571);
    path_0.lineTo(size.width*0.2922000,size.height*0.0720571);
    path_0.lineTo(size.width*0.2500000,size.height*0.2128571);
    path_0.lineTo(size.width*0.2504917,size.height*0.2871429);
    path_0.lineTo(size.width*0.2215833,size.height*0.3138571);
    path_0.lineTo(size.width*0.2220167,size.height*0.3931000);
    path_0.lineTo(size.width*0.2500000,size.height*0.4285714);
    path_0.lineTo(size.width*0.2500000,size.height*0.5714286);
    path_0.lineTo(size.width*0.2916667,size.height*0.6442857);
    path_0.lineTo(size.width*0.2916667,size.height*0.7857143);
    path_0.lineTo(size.width*0.3166667,size.height*0.8285714);
    path_0.lineTo(size.width*0.5216667,size.height*0.8271429);
    path_0.lineTo(size.width*0.5416667,size.height*0.7871429);
    path_0.lineTo(size.width*0.5416667,size.height*0.6428571);
    path_0.lineTo(size.width*0.5833333,size.height*0.5742857);
    path_0.lineTo(size.width*0.5833333,size.height*0.4285714);
    path_0.lineTo(size.width*0.6091667,size.height*0.3900000);
    path_0.lineTo(size.width*0.6083333,size.height*0.3171429);
    path_0.lineTo(size.width*0.5825000,size.height*0.2857143);
    path_0.lineTo(size.width*0.5841667,size.height*0.2157143);
    path_0.lineTo(size.width*0.5833333,size.height*0.1442857);
    path_0.lineTo(size.width*0.5425000,size.height*0.0728571);
    path_0.lineTo(size.width*0.2933333,size.height*0.0714286);
    path_0.lineTo(size.width*0.2489333,size.height*0.1432571);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


  // Layer 1

  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.bevel;



    canvas.drawPath(path_0, paint_stroke_0);


  // Layer 1

  Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.2483333,size.height*0.1428571);
    path_1.lineTo(size.width*0.2508333,size.height*0.2114286);
    path_1.lineTo(size.width*0.2916667,size.height*0.0720000);

    canvas.drawPath(path_1, paint_fill_1);


  // Layer 1

  Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.bevel;



    canvas.drawPath(path_1, paint_stroke_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

//main card import

// import 'dart:ui' as ui;

//main card widget code

// child: CustomPaint(
//   size: Size(WIDTH,(WIDTH*0.5833333333333334).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// ),
