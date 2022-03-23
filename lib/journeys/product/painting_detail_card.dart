import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:art_ecommerce/journeys/product/horizontal_tag_scroll.dart';
import 'package:art_ecommerce/journeys/product/product_screen.dart';
import 'package:art_ecommerce/journeys/product/rectangle_raised_text_icon_button.dart';
import 'package:flutter/material.dart';

class PaintingDetailCard extends StatelessWidget {
  const PaintingDetailCard({
    Key? key,
    required this.painting,
  }) : super(key: key);

  final PaintingEntity painting;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HorizontalTagScroll(),
          ListTile(
            title: Text(
              painting.title,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ),
            ),
            subtitle: Text(
              "₹${painting.price.toString()}",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              painting.description,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RectangleRaisedTextIconButton(
                            buttonText: "Wishlist",
                            icon: Icons.favorite,
                            iconColor: Colors.red,
                          ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:8.0),
                  child: RectangleRaisedTextIconButton(
                    buttonText: "Add To Cart",
                    icon: Icons.shopping_basket_sharp,
                    iconColor: Colors.black,
                  ),
                ),
              ),
              
            ],
          ),
          
        ],
      ),
    );
  }
}