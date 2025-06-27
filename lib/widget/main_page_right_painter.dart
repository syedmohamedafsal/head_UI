import 'package:flutter/cupertino.dart';

class RightSidePainter extends CustomPainter{
  
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
    path_0.moveTo(size.width*1.0012833,size.height*-0.0007857);
    path_0.lineTo(size.width*0.8750000,size.height*0.0742857);
    path_0.lineTo(size.width*0.8750000,size.height*0.2128571);
    path_0.lineTo(size.width*0.8916667,size.height*0.2428571);
    path_0.lineTo(size.width*0.8916667,size.height*0.3257143);
    path_0.lineTo(size.width*0.8750000,size.height*0.3542857);
    path_0.lineTo(size.width*0.8750000,size.height*0.4271429);
    path_0.lineTo(size.width*0.8333333,size.height*0.5000000);
    path_0.lineTo(size.width*0.8333333,size.height*0.6431000);
    path_0.lineTo(size.width*0.7515917,size.height*0.7152286);
    path_0.lineTo(size.width*0.3937167,size.height*0.7157571);
    path_0.lineTo(size.width*0.3738250,size.height*0.7283714);
    path_0.lineTo(size.width*0.2903833,size.height*0.7276571);
    path_0.lineTo(size.width*0.2667500,size.height*0.7147857);
    path_0.lineTo(size.width*0.1218167,size.height*0.7142714);
    path_0.lineTo(size.width*-0.1499250,size.height*0.9348571);
    path_0.lineTo(size.width*0.9978750,size.height*0.9238857);

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
