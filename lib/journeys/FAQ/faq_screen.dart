import 'package:art_ecommerce/journeys/FAQ/faq_card.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({ Key? key }) : super(key: key);

  static const routeName = '/faq-screen'; 

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => FAQScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'FAQs',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index){
                  return FAQCard();
                },
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}