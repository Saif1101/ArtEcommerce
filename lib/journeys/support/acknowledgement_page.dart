import 'package:art_ecommerce/journeys/checkout/painted_header.dart';
import 'package:art_ecommerce/params/acknowledgement_page_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AcknowledgementPage extends StatelessWidget {

  final AcknowledgementPageParams params;

  static const routeName = '/acknowledgement-page';

  static Route route( AcknowledgementPageParams params) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => AcknowledgementPage(params: params,));
  }

  const AcknowledgementPage({ Key? key, required this.params }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
        children: [
          PaintedTextSVGHeader(
            picture: params.picture, 
            title:  params.title,
            ),
          GestureDetector(
                          onTap: (){
                           Navigator.of(context).pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Shop For More',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                              ),
                              Icon(Icons.arrow_right,color: Colors.black,)
                              ,
                            ],
                          ),
                        ),
        ],
      ),
      ),
    );
  }
}