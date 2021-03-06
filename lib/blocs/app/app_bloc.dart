import 'package:art_ecommerce/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.unauthenticated()) {
    on<AppUserChanged>(_onUserChanged); 
    on<AppLogoutRequested>(_onLogoutRequested);
  }

  void _onUserChanged(
    AppUserChanged event, 
    Emitter<AppState> emit,
  ){
    

  }

  void _onLogoutRequested(
    AppLogoutRequested event, 
    Emitter<AppState> emit,
  ){

  }


}
