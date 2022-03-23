import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=>LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: Center(
                child: SizedBox(
                    width: ScreenUtil.screenWidth,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Artistique',
                        style: GoogleFonts.manrope(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(
                height: ScreenUtil.screenHeight / 4,
                child: SvgPicture.asset('assets/Logo.svg')),
            SizedBox(
              height: ScreenUtil.screenHeight / 8,
            ),
            Center(
              child: GestureDetector(
                onTap: () =>Navigator.pushNamedAndRemoveUntil(context,'/main',(Route<dynamic> route) => false),
                child: SizedBox(
                    height: ScreenUtil.screenHeight / 8,
                    width: ScreenUtil.screenWidth / 8,
                    child: SvgPicture.asset('assets/GoogleLogin.svg')),
              ),
            )
          ]),
    ));
  }
}