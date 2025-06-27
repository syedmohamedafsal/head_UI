import 'package:flutter/material.dart';

class LeftSidePainter extends CustomPainter{
  
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
    path_0.moveTo(size.width*0.1250000,0);
    path_0.lineTo(size.width*0.2075000,size.height*0.1428571);
    path_0.lineTo(size.width*0.2083333,size.height*0.2857143);
    path_0.lineTo(size.width*0.2325000,size.height*0.3214286);
    path_0.lineTo(size.width*0.2323000,size.height*0.3982286);
    path_0.lineTo(size.width*0.2078167,size.height*0.4312286);
    path_0.lineTo(size.width*0.2075333,size.height*0.5147571);
    path_0.lineTo(size.width*0.2293667,size.height*0.5496286);
    path_0.lineTo(size.width*0.2294083,size.height*0.6811714);
    path_0.lineTo(size.width*0.1665250,size.height*0.7822714);
    path_0.lineTo(size.width*0.1666667,size.height*0.9314286);
    path_0.lineTo(size.width*0.1258333,size.height*0.9957143);

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
