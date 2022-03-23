import 'package:flutter/material.dart';

class SkewCutRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);

    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCutRight oldClipper) => false;
}
class SkewCutLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width,0);
    path.lineTo(size.width, size.height);
    path.lineTo(20, size.height);
    path.lineTo(40, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCutLeft oldClipper) => false;
}