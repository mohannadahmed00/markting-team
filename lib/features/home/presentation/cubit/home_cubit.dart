import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/tabs/clients_tab.dart';
import '../pages/tabs/dash_tab.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int currentIndex = 0;
  List<Widget> screens = const [
    DashTab(),
    ClientsTab(),
  ];

  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(HomeChangeBottomNavState());
  }
}
