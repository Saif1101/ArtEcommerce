//Class that displays the expanded view of the photo, allows zoom/etc. using the photo view library.
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ExpandedPhotoView extends StatelessWidget {
  final String title;
  final int index;
  //FINAL BUILD : CHANGE INDEX TO IMAGEURL
  ExpandedPhotoView({
    required this.index, 
    required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title,),
      
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage('assets/ArtThemes/People/People($index).png'),
        ),

      ),
    );
  }
}