import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/config/app_router.dart';
import 'package:art_ecommerce/journeys/auth/login_screen.dart';


import 'package:flutter/material.dart';


void main() {
  ScreenUtil.init();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}








