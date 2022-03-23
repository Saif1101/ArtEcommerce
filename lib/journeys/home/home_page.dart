import 'dart:ui';

import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/journeys/home/blurred_image_foreground_text.dart';
import 'package:art_ecommerce/journeys/home/tabs/homescreen_tab_constants.dart';
import 'package:art_ecommerce/journeys/home/letter_spaced_header.dart';
import 'package:art_ecommerce/journeys/home/tabs/homescreen_tab_widget.dart';
import 'package:art_ecommerce/journeys/home/tabs/products_list_view_builder.dart';
import 'package:art_ecommerce/journeys/home/tabs/tab_title_widget.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.60,
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Themes',
                      style: TextStyle(
                        letterSpacing: 10.0,
                        fontSize : 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.0),
                  child: Column(
                    children: [
                      BlurredImageWithForegroundText(
                        height: 50,
                        text: 'Historical',
                        image: ExactAssetImage('assets/ArtThemes/DrawerBG/Historical.jpg'),
                        onTap: (){
                          Navigator.pushNamed(context, '/catalog');
                        },
                      ),
                      BlurredImageWithForegroundText(
                        height: 50,
                        text: 'Nature',
                        image: ExactAssetImage('assets/ArtThemes/DrawerBG/NatureLandscape.jpg'),
                      ),
                      BlurredImageWithForegroundText(
                        height: 50,
                        text: 'Food',
                        image: ExactAssetImage('assets/ArtThemes/DrawerBG/Food.jpg'),
                      ),
                      BlurredImageWithForegroundText(
                        height: 50,
                        text: 'People',
                        image: ExactAssetImage('assets/ArtThemes/DrawerBG/People.jpg'),
                      ),
                      BlurredImageWithForegroundText(
                        height: 50,
                        text: 'Political',
                        image: ExactAssetImage('assets/ArtThemes/DrawerBG/Political.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: const CustomAppBar(
          showSearch: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                //Top carousel with title on bottom with underline
                padding: const EdgeInsets.fromLTRB(30.0, 8, 30.0, 15.0),
                child: SizedBox(
                  height: ScreenUtil.screenHeight / 2.25,
                  child: Swiper(
                    pagination:
                        new SwiperPagination(
                alignment: Alignment.topCenter,
                builder: new DotSwiperPaginationBuilder(
                    color: Color.fromARGB(255, 209, 207, 207), activeColor: Colors.blueAccent),
              ),
              
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: (ScreenUtil.screenHeight / 2.25) * 0.8,
                              child: Image.asset(
                                'assets/ArtThemes/NatureLandscape/NatureLandscape($index).png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Sample Title $index",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: 12,
                              padding: const EdgeInsets.only(
                                bottom: 6,
                              ),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(1)),
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              LetterSpacedHeader(
                text: "Explore",
              ),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: HomescreenTabWidget(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}



/*
class MasonyGridRectangle extends StatelessWidget {

  const MasonyGridRectangle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            foregroundDecoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.white, Colors.transparent,],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0,  1],
    ),
            ),
            decoration: BoxDecoration(
              
                image: DecorationImage(
              image: AssetImage(
                  "assets/ArtThemes/NatureLandscape/NatureLandscape($index).png"),
              fit: BoxFit.fill,
            )),
            child: Text(
              'T\nh\ne\nm\ne\n$index', //TODO: Create a string extension that converts title to this format
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          );
        },
      ),
    );
  }
}*/
