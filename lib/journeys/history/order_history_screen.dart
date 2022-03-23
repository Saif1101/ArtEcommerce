import 'package:art_ecommerce/journeys/history/order_history_card.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  static const String routeName = '/order-history';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const OrderHistory(),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'Order History',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index){
                  return OrderHistoryCard(order: Models().orders[index]);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      )
    );
  }
}
