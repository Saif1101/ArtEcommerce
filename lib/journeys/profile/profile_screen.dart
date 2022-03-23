import 'dart:ui';

import 'package:art_ecommerce/journeys/home/blurred_image_foreground_text.dart';
import 'package:art_ecommerce/journeys/home/home_page.dart';
import 'package:art_ecommerce/journeys/home/letter_spaced_header.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/profile';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
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
            color: Colors.black,
          ),
          child: Text('Hello, User!',style: TextStyle(color: Colors.white),),
      ),
      ListTile(
          title: const Text('Order History'),
          onTap: () {
            Navigator.pushNamed(context, '/order-history');
          },
      ),
      ListTile(
          title: const Text('Address Book'),
          onTap: () {
            Navigator.pushNamed(context, '/select-address');
          },
      ),
      ListTile(
          title: const Text('FAQ'),
          onTap: () {
             Navigator.pushNamed(context, '/faq-screen');
            // ...
          },
      ),
      ListTile(
          title: const Text('Support'),
          onTap: () {
            Navigator.pushNamed(context, '/support-page');
          },
      ),
      ListTile(
          title: const Text('About Us'),
          onTap: () {
           
          },
      ),
    ],
  ),
),
        ),
        backgroundColor: Colors.white70,
        appBar: const CustomAppBar(showLogout: true,),
        body: SingleChildScrollView(
       
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 48,
                          backgroundImage: CachedNetworkImageProvider(
                              'https://img.favpng.com/25/13/19/samsung-galaxy-a8-a8-user-login-telephone-avatar-png-favpng-dqKEPfX7hPbc6SMVUCteANKwj.jpg'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            children: [
                              Text(
                                'Saif Khan',
                                style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black),
                              ),
                              Text(
                                'User Since 2016',
                                style: Theme.of(context).textTheme.bodyText2,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LetterSpacedHeader(text: 'Wishlist',),
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),

                
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio:1,),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: WishlistCard(elevationFactor: index.toDouble(),),
                    );
                            
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class WishlistCard extends StatelessWidget {
  final double? elevationFactor; 

  const WishlistCard({
    Key? key,
    this.elevationFactor, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      type: MaterialType.card,
      elevation: 10*(elevationFactor!%4),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
              "assets/ArtThemes/NatureLandscape/NatureLandscape(0).png",
              
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                "Painting0",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                '\$250',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            )
            
              ],)),
      ),
    );
  }
}
