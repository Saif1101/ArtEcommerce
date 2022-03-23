import 'package:art_ecommerce/entities/CartEntity.dart';
import 'package:art_ecommerce/entities/OrderEntity.dart';
import 'package:art_ecommerce/entities/OrderedPaintingEntity.dart';
import 'package:art_ecommerce/journeys/cart/order_price_summary.dart';
import 'package:art_ecommerce/journeys/checkout/ordered_product_summary_card.dart';
import 'package:art_ecommerce/journeys/history/order_history_screen.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:flutter/material.dart';

class OrderHistoryCard extends StatelessWidget {
  final OrderEntity order;
 

  OrderHistoryCard({ Key? key, required this.order }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ExpansionTile(
          leading: Icon(           
            Icons.shopping_bag_outlined,
            color: Colors.black,
           
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          childrenPadding: EdgeInsets.all(15.0),
          title: Text(
            order.orderID,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(
            order.dateTime.toString(),
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          children: [
            Divider(
              thickness: 2.0,
            ),
            OrderPriceSummary(),
            OrderedProductSummaryCard(), 
            
            
            SizedBox(
              height: 15,
            ),
            Material(
              elevation: 5,
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Support',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      VerticalDivider(
                        
                        thickness: 2.0,
                        color: Colors.black,
                      ),
                      Text(
                        'Feedback',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }
}