import 'package:flutter/material.dart';

class ClipPathTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomPaint(
          painter: BackgroundPainter(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            // decoration: BoxDecoration(gradient: LinearGradient(
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.topRight,
            //   colors: [
            //     Colors.orange,
            //     Colors.deepOrange,
            //   ],

            // )),
          ),
        ),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    paint.color = Colors.red;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;

    //path.lineTo(size.width, 00);
    //path.lineTo(size.width, size.height /2);
    //path.lineTo(0, size.height);

    // Diamond
    /*
      path.moveTo(0, size.height /2);
      path.lineTo(size.width /2, 0);
      path.lineTo(size.width, size.height/2);
      path.lineTo(size.width /2, size.height);
    */

    path.lineTo(00,00);
    //path.quadraticBezierTo(size.width/2, size.height, size.width, 0);
    path.cubicTo(size.width * 0.25, size.height, size.width *0.5, size.height, size.width * 0.75, size.height * 0.5);
    //path.cubicTo(x1, y1, x2, y2, x3, y3)
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
