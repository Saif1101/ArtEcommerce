import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/journeys/checkout/order_confirmation.dart';
import 'package:art_ecommerce/journeys/support/acknowledgement_page.dart';
import 'package:art_ecommerce/params/acknowledgement_page_params.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:art_ecommerce/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SupportPage extends StatelessWidget {
  static const routeName = '/support-page';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => SupportPage());
  }

  SupportPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Support",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Facing an issue?\nWrite to us.',
                  style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full-Name', 
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: mobileNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '10-digit mobile number without prefixes', 
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail Address', 
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  maxLines: 15,
                  controller: bodyController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Message', 
                  ),
                ),
                Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Material(
                        elevation: 10,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/acknowledgement-page',
                            arguments: AcknowledgementPageParams(
                                title: 'We\'ll get back to you shortly.', 
                                picture: SvgPicture.asset('assets/tick_box.svg'),
                                ));},
                          child: BlackButtonWithText(text: 'Submit'),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
