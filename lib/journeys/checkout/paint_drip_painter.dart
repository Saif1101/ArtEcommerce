import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Path path = Path();
  Paint paint = Paint();

  path.lineTo(0, size.height);

      var lightGreyFirstStart = Offset(size.width / 5, size.height); 
      //fist point of quadratic bezier curve
      var lightGreyFirstEnd = Offset(size.width / 2.25, size.height - 40);
      //second point of quadratic bezier curve
      path.quadraticBezierTo(lightGreyFirstStart.dx, lightGreyFirstStart.dy, lightGreyFirstEnd.dx,lightGreyFirstEnd.dy);

      var lightGreySecondStart = Offset(size.width - (size.width / 3.24), size.height - 95); 
      //third point of quadratic bezier curve
      var lightGreySecondEnd = Offset(size.width, size.height );
      //fourth point of quadratic bezier curve
      path.quadraticBezierTo(lightGreySecondStart.dx, lightGreySecondStart.dy, lightGreySecondEnd.dx, lightGreySecondEnd.dy);

      path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
      path.close();

  paint.color = Color.fromARGB(255, 233, 233, 233);
  canvas.drawPath(path, paint);
      
  

  path = Path();
      
      path.lineTo(0, size.height);

      var greyFirstStart = Offset(size.width / 5, size.height-10); 
      //fist point of quadratic bezier curve
      var greyFirstEnd = Offset(size.width / 2.25, size.height - 60.0);
      //second point of quadratic bezier curve
      path.quadraticBezierTo(greyFirstStart.dx, greyFirstStart.dy, greyFirstEnd.dx, greyFirstEnd.dy);

      var greySecondStart = Offset(size.width - (size.width / 3.24), size.height - 115); 
      //third point of quadratic bezier curve
      var greySecondEnd = Offset(size.width, size.height - 20);
      //fourth point of quadratic bezier curve
      path.quadraticBezierTo(greySecondStart.dx, greySecondStart.dy, greySecondEnd.dx, greySecondEnd.dy);

      path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
      path.close();

  paint.color = Color.fromARGB(255, 206, 206, 206);
  canvas.drawPath(path, paint);
  
  path = Path();



      path.lineTo(0, size.height-10); //start path with this if you are making at bottom
      
      var blackFirstStart = Offset(size.width / 5, size.height-20); 
      //fist point of quadratic bezier curve
      var blackFirstEnd = Offset(size.width / 2.25, size.height - 70.0);
      //second point of quadratic bezier curve
      path.quadraticBezierTo(blackFirstStart.dx, blackFirstStart.dy, blackFirstEnd.dx, blackFirstEnd.dy);

      var blackSecondStart = Offset(size.width - (size.width / 3.24), size.height - 125); 
      //third point of quadratic bezier curve
      var blackSecondEnd = Offset(size.width, size.height - 30);
      //fourth point of quadratic bezier curve
      path.quadraticBezierTo(blackSecondStart.dx, blackSecondStart.dy, blackSecondEnd.dx, blackSecondEnd.dy);

      path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
      path.close();

  paint.color = Color.fromARGB(255, 34,34,34);
  canvas.drawPath(path, paint);
  path.lineTo(0, size.height); //start path with this if you are making at bottom
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}

class HorizontalFadedLinesPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size){
    Path path = Path();
    Paint paint = Paint();

  path.lineTo(0, size.height);
  path.lineTo(size.width, size.height);
  path.lineTo(size.width, 0);
  path.close();
    paint.color = Color.fromARGB(255, 233, 233, 233);
    canvas.drawPath(path, paint);
  
    path = Path(); 
  
  path.lineTo(0, size.height-10);
  path.lineTo(size.width, size.height-10);
  path.lineTo(size.width, 0);
  path.close();
    paint.color = Color.fromARGB(255, 206, 206, 206);
    canvas.drawPath(path, paint);
  
    path = Path();
  
  path.lineTo(0, size.height-20);
  path.lineTo(size.width, size.height-20);
  path.lineTo(size.width, 0);
  path.close();

    paint.color = Color.fromARGB(255, 34,34,34);
    canvas.drawPath(path, paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}