import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/entities/AddressEntity.dart';
import 'package:art_ecommerce/entities/CartEntity.dart';
import 'package:art_ecommerce/journeys/cart/cart_screen.dart';
import 'package:art_ecommerce/journeys/cart/order_price_summary.dart';
import 'package:art_ecommerce/journeys/checkout/painted_header.dart';
import 'package:art_ecommerce/journeys/checkout/address_expansion_tile.dart';
import 'package:art_ecommerce/journeys/checkout/ordered_product_summary_card.dart';
import 'package:art_ecommerce/journeys/checkout/paint_drip_painter.dart';
import 'package:art_ecommerce/journeys/support/acknowledgement_page.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:art_ecommerce/params/acknowledgement_page_params.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({Key? key}) : super(key: key);

  static const routeName = '/order-confirmation';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => OrderConfirmationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Confirmation',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 6.0), 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextBetweenDivider(text: 'Shipping Address', icon: Icon(Icons.create_sharp,),),
                            AddressDescriptionWidget(
                              addressEntity: Models.addresses[0],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextBetweenDivider(text: 'Price Summary'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 2.0),
                        child: OrderPriceSummary(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  TextBetweenDivider(
                    text: 'Product(s)',
                  ),
                  OrderedProductsSummaryListview(),
                ],
              ),
              Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Material(
                        elevation: 25,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(
                               context, 
                               '/acknowledgement-page',
                               arguments:  AcknowledgementPageParams(
                               title: 'Thank you for your order.', 
                               picture:  SvgPicture.asset('assets/Painting_receipt.svg'),
                               subtitle: 'OrderID: 0291#245' ),
                               );},
                          child: BlackButtonWithText(text: 'Make Payment',),
                        ),
                      ),
                    ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class BlackButtonWithText extends StatelessWidget {
  final String text; 
  const BlackButtonWithText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      height: 50,
      decoration: const BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 15.0, horizontal: 30.0),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

class AddressDescriptionWidget extends StatelessWidget {
  final AddressEntity addressEntity;
  const AddressDescriptionWidget({
    required this.addressEntity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${addressEntity.name}\n${addressEntity.mobileNumber}\n${addressEntity.address1}\n${addressEntity.address2}\n${addressEntity.pinCode.toString()}',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}

class TextBetweenDivider extends StatelessWidget {
  final String text;
  final Icon? icon; 
  const TextBetweenDivider({
    this.icon, 
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(text, style: Theme.of(context).textTheme.headline5),
        ),
        icon ?? SizedBox.shrink(),
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class OrderedProductsSummaryListview extends StatelessWidget {
  const OrderedProductsSummaryListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return OrderedProductSummaryCard();
      },
    );
  }
}
