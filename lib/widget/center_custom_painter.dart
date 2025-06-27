import 'package:flutter/material.dart';

class CenterCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 190, 190, 190)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.4166667,size.height*0.0685714);
    path_0.lineTo(size.width*0.4583333,0);
    path_0.lineTo(size.width*0.7075000,0);
    path_0.lineTo(size.width*0.7500000,size.height*0.0700000);
    path_0.lineTo(size.width*0.7500000,size.height*0.2157143);
    path_0.lineTo(size.width*0.7500000,size.height*0.2157143);
    path_0.lineTo(size.width*0.7750000,size.height*0.2428571);
    path_0.lineTo(size.width*0.7750000,size.height*0.3242857);
    path_0.lineTo(size.width*0.7500000,size.height*0.3600000);
    path_0.lineTo(size.width*0.7500000,size.height*0.4985714);
    path_0.lineTo(size.width*0.7741667,size.height*0.5271429);
    path_0.lineTo(size.width*0.7746333,size.height*0.6121143);
    path_0.lineTo(size.width*0.7500000,size.height*0.6428571);
    path_0.lineTo(size.width*0.7500000,size.height*0.7857143);
    path_0.lineTo(size.width*0.7091667,size.height*0.8571429);
    path_0.lineTo(size.width*0.4575000,size.height*0.8571429);
    path_0.lineTo(size.width*0.4166667,size.height*0.7842857);
    path_0.lineTo(size.width*0.4166667,size.height*0.6414286);
    path_0.lineTo(size.width*0.3916667,size.height*0.6128571);
    path_0.lineTo(size.width*0.3916667,size.height*0.5285714);
    path_0.lineTo(size.width*0.4166667,size.height*0.4971429);
    path_0.lineTo(size.width*0.4166667,size.height*0.3600000);
    path_0.lineTo(size.width*0.3916667,size.height*0.3222286);
    path_0.lineTo(size.width*0.3908333,size.height*0.2457143);
    path_0.lineTo(size.width*0.4160333,size.height*0.2158857);
    path_0.lineTo(size.width*0.4166667,size.height*0.0685714);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
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
