import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/params/acknowledgement_page_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackPage extends StatelessWidget {

  static const routeName = '/feedback-page';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => FeedbackPage(),
    );
  }

  FeedbackPage({ Key? key }) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We\'d love to hear from you!',
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
                      labelText: 'Feedback', 
                    ),
                  ),
                  Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Material(
                          elevation: 10,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/acknowledgement-page', 
                              arguments: AcknowledgementPageParams
                              (title: 'We\'ve recieved your feedback.'
                              , picture: SvgPicture.asset('asset/smile.svg')
                              ),
                              );},
                            child: Container(
                              width: ScreenUtil.screenWidth,
                              height: 30,
                              decoration: const BoxDecoration(color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2.0, horizontal: 30.0),
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: Text(
                                      'Submit',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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