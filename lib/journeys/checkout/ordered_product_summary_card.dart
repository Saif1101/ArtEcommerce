import 'package:art_ecommerce/entities/CartEntity.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:flutter/material.dart';

class OrderedProductSummaryCard extends StatelessWidget {
  const OrderedProductSummaryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            Models.products[0].imageURL,
            fit: BoxFit.contain,
            width: 80,
            height: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                   Models.products[0].title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  'Qty. 2',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          Expanded(
            child: Text('₹${ Models.products[0].price}',
                style: Theme.of(context).textTheme.headline6),
          )
        ],
      ),
    );
  }
}