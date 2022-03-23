import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  final PaintingEntity painting;
  
  const CartProductCard({
     Key? key,
     required this.painting }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:1.5,horizontal: 5.0),
      child: Row(
        children: [
          Image.network(
            painting.imageURL,
            width: 100, 
            height: 100,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10.0,), 
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(painting.title, style: Theme.of(context).textTheme.headline5,), 
                Text('₹${painting.price}',style: Theme.of(context).textTheme.headline6,), 
                SizedBox(width: 10,),   
              ],
            ),
          ),
          Row(
                children: [
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.remove_circle_outline_rounded)),
                  Text('1',
                  style: Theme.of(context).textTheme.headline5),
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.add_circle_outline_rounded)),
                ],
              ),
        ],
      ),
    );
  }
}