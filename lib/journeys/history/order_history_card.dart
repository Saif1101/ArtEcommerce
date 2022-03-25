import 'package:art_ecommerce/entities/CartEntity.dart';
import 'package:art_ecommerce/entities/OrderEntity.dart';
import 'package:art_ecommerce/entities/OrderedPaintingEntity.dart';
import 'package:art_ecommerce/journeys/cart/order_price_summary.dart';
import 'package:art_ecommerce/journeys/checkout/ordered_product_summary_card.dart';
import 'package:art_ecommerce/journeys/history/order_history_screen.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OrderHistoryCard extends StatelessWidget {
  final OrderEntity order;

  OrderHistoryCard({Key? key, required this.order}) : super(key: key);

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
          OrderStatus(),
          SizedBox(height: 10,),
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

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Status',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w300),
            ),
            Text(
              'Active',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.green),
            )
          ],
        ),
        StepProgressIndicator(
    totalSteps: 4,
    currentStep: 2,
    size: 5,
    selectedColor: Colors.black,
    unselectedColor: Colors.grey
)
      ],
    );
  }
}
