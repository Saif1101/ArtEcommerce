

import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:flutter/material.dart';

class CatalogGridProductCard extends StatelessWidget {
  final PaintingEntity painting;
  
  const CatalogGridProductCard({
    required this.painting,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Image.asset(
            'assets/ArtThemes/People/People(0).png',
            fit: BoxFit.contain
          ),
        ),
        SizedBox(height:2),
        Text('${painting.title}',
        style: Theme.of(context).textTheme.headline5,),
        SizedBox(height:5),
        Text('${painting.price}',
        style: Theme.of(context).textTheme.bodyText2,),
      ],
    );
  }
}


class CatalogListProductCard extends StatelessWidget {
  final PaintingEntity painting;
  
  const CatalogListProductCard({
    required this.painting,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/ArtThemes/People/People(0).png',
          fit: BoxFit.contain
        ),
        SizedBox(height:2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${painting.title}',
              style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w800),),
              
              Text('${painting.price}',
              style: Theme.of(context).textTheme.bodyText2,),
            ],
          ),
        ),
      ],
    );
  }
}