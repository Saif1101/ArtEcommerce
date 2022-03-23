import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredImageWithForegroundText extends StatelessWidget {
  final VoidCallback? onTap;
  final String text; 
  final ExactAssetImage image;
  final double height; 
  final Color? textColor; 
  const BlurredImageWithForegroundText({
    Key? key,
    this.onTap, 
    this.textColor,
    required this.height,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
       margin: const EdgeInsets.symmetric(vertical: 0.25),
      height: height+50,
      width: double.maxFinite,
      decoration: BoxDecoration(
      image: DecorationImage(
        image: image,
        fit: BoxFit.cover,
      ),
      ),
      child: ClipRRect( // make sure we apply clip it properly
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          padding: EdgeInsets.all(8.0) ,
          alignment: Alignment.center,
          color: Colors.grey.withOpacity(0.1),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              text,
              style: TextStyle(
                letterSpacing: 8.0,
                color: textColor?? Colors.white,
                fontSize: 28, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
      ),
      ),
    );
  }
}