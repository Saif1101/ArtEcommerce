import 'package:art_ecommerce/blocs/homescreen_tabs/cubit/homescreen_tabs_cubit.dart';
import 'package:art_ecommerce/journeys/home/tabs/homescreen_tab_constants.dart';
import 'package:art_ecommerce/journeys/home/tabs/products_list_view_builder.dart';
import 'package:art_ecommerce/journeys/home/tabs/tab_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomescreenTabWidget extends StatefulWidget {
  const HomescreenTabWidget({ Key? key }) : super(key: key);

  @override
  State<HomescreenTabWidget> createState() => _HomescreenTabWidgetState();
}

class _HomescreenTabWidgetState extends State<HomescreenTabWidget> with 
SingleTickerProviderStateMixin {

  HomescreenTabsCubit homescreenTabsCubit = HomescreenTabsCubit();

  int currentTabIndex = 0; 
  
  @override
  void initState() {
    super.initState();
    homescreenTabsCubit.homescreenTabChanged(currentTabIndex: currentTabIndex);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
     value: homescreenTabsCubit,
      child: BlocBuilder<HomescreenTabsCubit, HomescreenTabsState>(
        builder: ((context, state) {
          print('The state of homescreen tabs is $state');
          return Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = 0;
                      i < HomescreenTabConstants.categoryTabs.length;
                      i++)
                    TabTitleWidget(
                      title: HomescreenTabConstants.categoryTabs[i].title,
                      onTap: (){
                        homescreenTabsCubit.homescreenTabChanged(currentTabIndex: i);
                      },
                      isSelected:  HomescreenTabConstants.categoryTabs[i].index == state.currentTabIndex,
                    )
                    
                ],
              ),
              if(state is HomescreenTabChanged)
                   HomescreenProductGridView(category: state.category)
                
              
            ],
          );
        })),
      );
  }
}