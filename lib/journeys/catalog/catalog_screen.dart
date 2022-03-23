
import 'package:art_ecommerce/journeys/catalog/catalog_product_card.dart';
import 'package:art_ecommerce/journeys/catalog/category_actions_toolbar.dart';

import 'package:art_ecommerce/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';

import '../../models/models.dart';

class CatalogScreen extends StatelessWidget {
 // final String category;

  const CatalogScreen({ Key? key}) : super(key: key);
  static const routeName = '/catalog';

  static Route route(category) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(
             // category: category,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          showSearch: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Material(elevation: 5, child: CategoryActionsToolbar()),
            SizedBox(
              height: 10,
            ), //For filter bar
            Expanded(
              child: ProductListView(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.9,
            crossAxisSpacing: 25.0,
            crossAxisCount: 2),
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return CatalogGridProductCard(painting: Models.products[index%3],);
        });
  }
}


class ProductListView extends StatelessWidget {
  const ProductListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
                   return CatalogListProductCard(painting: Models.products[index%3],);

        }, 
        separatorBuilder: (BuildContext context, int index) {  
          return SizedBox(height: 25,);
        },);
  }
}















