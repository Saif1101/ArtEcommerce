import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/journeys/checkout/paint_drip_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaintedTextSVGHeader extends StatelessWidget {
  final SvgPicture picture; 
  final String title; 
  final String? subtitle; 
  
  const PaintedTextSVGHeader({
    Key? key, 
    required this.picture, 
    required this.title, 
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Column(
        children: [
          Material(
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:4.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                        width: ScreenUtil.screenWidth / 3.25,
                        height: ScreenUtil.screenHeight / 3.25,
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: picture)),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            subtitle??'',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomPaint(
            child: Container(
              height: 100,
            ),
            painter: HorizontalFadedLinesPainter(),
          ),
        ],
      ),
    );
  }
}