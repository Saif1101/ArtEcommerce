import 'package:art_ecommerce/journeys/cart/cart_screen.dart';
import 'package:art_ecommerce/journeys/home/home_page.dart';
import 'package:art_ecommerce/journeys/profile/profile_screen.dart';

import 'package:art_ecommerce/widgets/custom_bottom_navbar.dart';

import 'package:flutter/material.dart';

class MainPageView extends StatefulWidget {
  static const routeName = '/main';
  const MainPageView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => MainPageView());
  }

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int pageIndex = 0;
  PageController pageController = PageController(initialPage: 1);

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(
          pageController: pageController,
        ),
        body: PageView( // TODO:- If user is logged in :- display PageView or if not logged in -> show login. 
          children: const [ProfileScreen(),HomeScreen(), CartScreen()], //Insert a page between profile and cart to make it the explore screen
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
        ),
      ),
    );
  }
}
