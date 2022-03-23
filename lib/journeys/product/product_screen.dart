import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:art_ecommerce/journeys/product/expanded_photo_view.dart';
import 'package:art_ecommerce/journeys/product/painting_detail_card.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class ProductScreen extends StatelessWidget {
  final PaintingEntity painting;
 // final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ProductScreen({Key? key, required this.painting}) : super(key: key);
  static const routeName = '/product';

  static Route route(PaintingEntity painting) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(
              painting: painting,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenUtil.screenHeight / 2,
                width: ScreenUtil.screenWidth-10,
                child: Swiper(
                  
                  pagination: new SwiperPagination(
                    margin: EdgeInsets.all(18),
                alignment: Alignment.bottomCenter,
                builder: new DotSwiperPaginationBuilder(
                color: Color.fromARGB(255, 209, 207, 207), activeColor: Colors.blueAccent),

              ),
              
                  itemCount: 4,
                  itemBuilder: (BuildContext ct, int index) {
                    return GestureDetector(
                      //pass just the link to the post's image collection 
                      onTap: ()=>Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (ctx)=>ExpandedPhotoView(index: index,title: 'Painting $index',))),
                      child: Image.asset(
                        'assets/ArtThemes/People/People($index).png',
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),
              PaintingDetailCard(painting: painting),
            ],
          ),
        ),
      ),
    );
  }
}








