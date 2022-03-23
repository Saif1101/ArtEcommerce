
import 'package:flutter_svg/flutter_svg.dart';

class AcknowledgementPageParams {
  final String title; 
  final String? subtitle;
  final SvgPicture picture;

  AcknowledgementPageParams({
    required this.title,
    required this.picture,
    this.subtitle});
}