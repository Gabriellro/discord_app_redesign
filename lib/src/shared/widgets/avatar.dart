import 'package:flutter/material.dart';

class AvatarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width / 2, size.height);
    path.cubicTo(size.width * 0.11, size.height, -0.13, size.height * 0.58,
        size.width * 0.07, size.height / 4);
    path.cubicTo(size.width * 0.12, size.height * 0.16, size.width / 5,
        size.height * 0.08, size.width * 0.31, size.height * 0.04);
    path.cubicTo(size.width * 0.63, -0.1, size.width, size.height * 0.14,
        size.width, size.height / 2);
    path.cubicTo(size.width, size.height * 0.56, size.width, size.height * 0.6,
        size.width * 0.96, size.height * 0.64);
    path.cubicTo(size.width * 0.93, size.height * 0.67, size.width * 0.9,
        size.height * 0.64, size.width * 0.86, size.height * 0.64);
    path.cubicTo(size.width * 0.74, size.height * 0.64, size.width * 0.64,
        size.height * 0.74, size.width * 0.64, size.height * 0.86);
    path.cubicTo(size.width * 0.64, size.height * 0.9, size.width * 0.67,
        size.height * 0.93, size.width * 0.64, size.height * 0.96);
    path.cubicTo(size.width * 0.6, size.height, size.width * 0.56, size.height,
        size.width / 2, size.height);
    path.cubicTo(size.width / 2, size.height, size.width / 2, size.height,
        size.width / 2, size.height);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = Color(0xff707070);
    path = Path();
    path.lineTo(size.width / 2, size.height * 0.98);
    path.cubicTo(size.width * 0.56, size.height * 0.98, size.width * 0.6,
        size.height * 0.97, size.width * 0.63, size.height * 0.95);
    path.cubicTo(size.width * 0.64, size.height * 0.93, size.width * 0.64,
        size.height * 0.93, size.width * 0.63, size.height * 0.9);
    path.cubicTo(size.width * 0.62, size.height * 0.89, size.width * 0.62,
        size.height * 0.88, size.width * 0.62, size.height * 0.86);
    path.cubicTo(size.width * 0.62, size.height * 0.73, size.width * 0.73,
        size.height * 0.62, size.width * 0.86, size.height * 0.62);
    path.cubicTo(size.width * 0.88, size.height * 0.62, size.width * 0.89,
        size.height * 0.62, size.width * 0.9, size.height * 0.63);
    path.cubicTo(size.width * 0.91, size.height * 0.63, size.width * 0.92,
        size.height * 0.64, size.width * 0.93, size.height * 0.64);
    path.cubicTo(size.width * 0.93, size.height * 0.64, size.width * 0.94,
        size.height * 0.63, size.width * 0.95, size.height * 0.63);
    path.cubicTo(size.width * 0.97, size.height * 0.6, size.width * 0.98,
        size.height * 0.56, size.width * 0.98, size.height / 2);
    path.cubicTo(size.width * 0.98, size.height * 0.43, size.width * 0.97,
        size.height * 0.37, size.width * 0.94, size.height * 0.31);
    path.cubicTo(size.width * 0.92, size.height * 0.26, size.width * 0.88,
        size.height / 5, size.width * 0.84, size.height * 0.16);
    path.cubicTo(size.width * 0.79, size.height * 0.12, size.width * 0.74,
        size.height * 0.08, size.width * 0.69, size.height * 0.06);
    path.cubicTo(size.width * 0.63, size.height * 0.03, size.width * 0.56,
        size.height * 0.02, size.width / 2, size.height * 0.02);
    path.cubicTo(size.width * 0.43, size.height * 0.02, size.width * 0.37,
        size.height * 0.03, size.width * 0.31, size.height * 0.06);
    path.cubicTo(size.width * 0.26, size.height * 0.08, size.width / 5,
        size.height * 0.12, size.width * 0.16, size.height * 0.16);
    path.cubicTo(size.width * 0.12, size.height / 5, size.width * 0.08,
        size.height * 0.26, size.width * 0.06, size.height * 0.31);
    path.cubicTo(size.width * 0.03, size.height * 0.37, size.width * 0.02,
        size.height * 0.43, size.width * 0.02, size.height / 2);
    path.cubicTo(size.width * 0.02, size.height * 0.56, size.width * 0.03,
        size.height * 0.63, size.width * 0.06, size.height * 0.69);
    path.cubicTo(size.width * 0.08, size.height * 0.74, size.width * 0.12,
        size.height * 0.79, size.width * 0.16, size.height * 0.84);
    path.cubicTo(size.width / 5, size.height * 0.88, size.width * 0.26,
        size.height * 0.92, size.width * 0.31, size.height * 0.94);
    path.cubicTo(size.width * 0.37, size.height * 0.97, size.width * 0.43,
        size.height * 0.98, size.width / 2, size.height * 0.98);
    path.lineTo(size.width / 2, size.height);
    path.cubicTo(size.width * 0.43, size.height, size.width * 0.37, size.height,
        size.width * 0.31, size.height * 0.96);
    path.cubicTo(size.width / 4, size.height * 0.93, size.width * 0.19,
        size.height * 0.9, size.width * 0.15, size.height * 0.85);
    path.cubicTo(size.width * 0.1, size.height * 0.81, size.width * 0.06,
        size.height * 0.75, size.width * 0.04, size.height * 0.69);
    path.cubicTo(size.width * 0.01, size.height * 0.63, 0, size.height * 0.57,
        0, size.height / 2);
    path.cubicTo(0, size.height * 0.43, size.width * 0.01, size.height * 0.37,
        size.width * 0.04, size.height * 0.31);
    path.cubicTo(size.width * 0.06, size.height / 4, size.width * 0.1,
        size.height * 0.19, size.width * 0.15, size.height * 0.15);
    path.cubicTo(size.width * 0.19, size.height * 0.1, size.width / 4,
        size.height * 0.06, size.width * 0.31, size.height * 0.04);
    path.cubicTo(size.width * 0.37, size.height * 0.01, size.width * 0.43, 0,
        size.width / 2, 0);
    path.cubicTo(size.width * 0.57, 0, size.width * 0.63, size.height * 0.01,
        size.width * 0.69, size.height * 0.04);
    path.cubicTo(size.width * 0.75, size.height * 0.06, size.width * 0.81,
        size.height * 0.1, size.width * 0.85, size.height * 0.15);
    path.cubicTo(size.width * 0.9, size.height * 0.19, size.width * 0.94,
        size.height / 4, size.width * 0.96, size.height * 0.31);
    path.cubicTo(size.width, size.height * 0.37, size.width, size.height * 0.43,
        size.width, size.height / 2);
    path.cubicTo(size.width, size.height * 0.56, size.width, size.height * 0.6,
        size.width * 0.96, size.height * 0.64);
    path.cubicTo(size.width * 0.93, size.height * 0.67, size.width * 0.9,
        size.height * 0.64, size.width * 0.86, size.height * 0.64);
    path.cubicTo(size.width * 0.74, size.height * 0.64, size.width * 0.64,
        size.height * 0.74, size.width * 0.64, size.height * 0.86);
    path.cubicTo(size.width * 0.64, size.height * 0.9, size.width * 0.67,
        size.height * 0.93, size.width * 0.64, size.height * 0.96);
    path.cubicTo(size.width * 0.6, size.height, size.width * 0.56, size.height,
        size.width / 2, size.height);
    path.cubicTo(size.width / 2, size.height, size.width / 2, size.height,
        size.width / 2, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
