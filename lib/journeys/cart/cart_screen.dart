import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/entities/CartEntity.dart';

import 'package:art_ecommerce/journeys/cart/cart_product_card.dart';
import 'package:art_ecommerce/journeys/cart/order_price_summary.dart';
import 'package:art_ecommerce/journeys/checkout/order_confirmation.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const routeName = '/cart';

  

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Cart",
        ),
        body: Stack(children: [
          Positioned(
            top: ScreenUtil.screenHeight / 3 + 5,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView.builder(
              itemCount: Models.products.length,
              itemBuilder: (context,index){
                return CartProductCard(painting: Models.products[index]);
              })
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Material(
              elevation: 10,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 40.0),
                      child: OrderPriceSummary(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Material(
                        elevation: 10,
                        child: GestureDetector(
                          onTap: ()=>{Navigator.pushNamed(context, '/select-address')},
                          child: BlackButtonWithText(text: 'Proceed'),
                        ),
                      ),
                    ),                   
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}


