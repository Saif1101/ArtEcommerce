part of 'homescreen_tabs_cubit.dart';


abstract class HomescreenTabsState extends Equatable {
  final int currentTabIndex;

  const HomescreenTabsState({this.currentTabIndex = 0});

  @override
  List<Object> get props => [currentTabIndex];
}

class HomescreenTabsInitial extends HomescreenTabsState {}

class HomescreenTabChanged extends HomescreenTabsState {
  //final List<PaintingEntity> paintings;
  final String category; 

  const HomescreenTabChanged({int currentTabIndex = 0, required this.category})
      : super(currentTabIndex: currentTabIndex);

  @override
  List<Object> get props => [currentTabIndex,category];
}

class HomescreenTabloading extends HomescreenTabsState{
  
}

class HomescreenTabLoadError extends HomescreenTabsState {
  //final AppErrorType errorType; TODO create AppError 

  const HomescreenTabLoadError({
    int currentTabIndex = 0,
    //required this.errorType,
  }) : super(currentTabIndex: currentTabIndex);
}

class HomescreenTabLoading extends HomescreenTabsState {
  const HomescreenTabLoading({int currentTabIndex = 0})
      : super(currentTabIndex: currentTabIndex);
}
