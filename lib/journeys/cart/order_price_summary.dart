import 'package:art_ecommerce/entities/CartEntity.dart';
import 'package:flutter/material.dart';

class OrderPriceSummary extends StatelessWidget {
  const OrderPriceSummary({
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
              'Subtotal',
              style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w300),
            ),
            Text(
              '₹${Cart().subtotalString}',
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Fee',
              style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w300),
            ),
            Text(
              '₹${Cart().deliveryFeeString}',
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
        Row(
    children: [
      Expanded(child: Divider(color: Colors.black,)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: Text(
          Cart().freeDeliveryString,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      Expanded(child: Divider(color: Colors.black,)),
    ],
                    ), //Make this show up only if order is not eligible for free delivery 
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',
                style: Theme.of(context).textTheme.headline5),
            Text('₹${Cart().totalString}',
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ],
    );
  }
}