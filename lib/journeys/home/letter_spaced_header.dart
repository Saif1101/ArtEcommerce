import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:flutter/material.dart';

class LetterSpacedHeader extends StatelessWidget {
  final String text;
  const LetterSpacedHeader({
   required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil.screenWidth,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  letterSpacing:  ScreenUtil.screenWidth/30
                 ),
            )),
      ),
    );
  }
}