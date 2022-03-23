import 'package:art_ecommerce/entities/CartEntity.dart';
import 'package:art_ecommerce/journeys/search/search_field.dart';
import 'package:art_ecommerce/journeys/search/search_result_card.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController searchController = new TextEditingController();

  

  static const routeName = '/search-page';

  SearchPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => SearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchField(
            searchController: searchController,
            onSubmit: (value) {
        print('FieldSubmitted: value: $value');
      },
          ),
           SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount:  Models.products.length,
              itemBuilder: (context, index){
                return SearchResultCard(paintingEntity:  Models.products.elementAt(index));
              }),
          ),
        ],
      ),
    );
  }
}
