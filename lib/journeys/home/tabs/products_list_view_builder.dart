import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:art_ecommerce/journeys/home/tabs/product_tab_card.dart';
import 'package:flutter/material.dart';

class HomescreenProductGridView extends StatelessWidget {
 // final List<PaintingEntity> movies;

  final String category; 

  const HomescreenProductGridView({Key? key, required this.category })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:6,horizontal: 10),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        scrollDirection: Axis.vertical,
        // pass in PaintingEntity to ProductTabCardWidget
        children: List.generate(5, (index) => ProductTabCardWidget(movieId: index, title: 'Painting Title', posterPath: 'assets/ArtThemes/$category/$category($index).png')),
          /*
          ProductTabCardWidget(
            movieId: 0,
            title: 'movie.title',
            posterPath: 'assets/ArtThemes/$category/$category(0)',
          ),
          ProductTabCardWidget(
            movieId: 1,
            title: 'movie.title',
            posterPath: 'movie.posterPath',
          ),
          ProductTabCardWidget(
            movieId: 2,
            title: 'movie.title',
            posterPath: 'movie.posterPath',
          ),
          ProductTabCardWidget(
            movieId: 3,
            title: 'movie.title',
            posterPath: 'movie.posterPath',
          ),
          ProductTabCardWidget(
            movieId: 4,
            title: 'movie.title',
            posterPath: 'movie.posterPath',
          ),
          ProductTabCardWidget(
            movieId: 1,
            title: 'movie.title',
            posterPath: 'movie.posterPath',
          ),
          */
        
        
      
      ),
    );
  }
}