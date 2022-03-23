import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

part 'homescreen_tabs_state.dart';

class HomescreenTabsCubit extends Cubit<HomescreenTabsState> {
  //add usecases to fetch trending/popular/featured
  HomescreenTabsCubit() : super(HomescreenTabsInitial());

//5 categories:- Food, Historical, People, NatureLandscape, Political

void homescreenTabChanged({int currentTabIndex = 0})
async{
  emit(HomescreenTabLoading(currentTabIndex: currentTabIndex));
  //late Either<AppError,List<PaintingEntity>> paintingsEither;
  late String category; 
  print('before making api calls : index : $currentTabIndex');
  switch(currentTabIndex){
    case 0: 
      category = 'Food';
      break;
    case 1: 
      category = 'Historical';
      break;
    case 2: 
      category = 'People'; 
      break; 
    case 3: 
      category = 'NatureLandscape';
      break; 
    case 4: 
      category = 'Political';
      break; 
  }
    emit(
      HomescreenTabChanged(
        currentTabIndex: currentTabIndex,
        category: category)
    );
  }
}
