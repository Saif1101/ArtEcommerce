



import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchResultCard extends StatelessWidget {
  final PaintingEntity paintingEntity;

  const SearchResultCard({Key? key, required this.paintingEntity}) : super(key: key); 

  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Material(
        elevation: 2,
        child: GestureDetector(
          onTap: (){
           Navigator.pushNamed(context, '/product'); //pass in product id:- retrieve product from product id on the product screen
          },
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: paintingEntity.imageURL!=null?CachedNetworkImage(
                    imageUrl: paintingEntity.imageURL,
                    width: 80,
                  ):Image.asset('assets/painting_placeholder.png', width: 80,),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      paintingEntity.title,
                      style: Theme.of(context).textTheme.headline5
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.5),
                      child: Text(
                        paintingEntity.price.toString(),
                        style: Theme.of(context).textTheme.bodyText1
                      ),
                    ),
                    Text(
                      paintingEntity.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}