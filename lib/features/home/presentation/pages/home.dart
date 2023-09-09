import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

import '../cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.appBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: HomeCubit.get(context)
                  .screens[HomeCubit.get(context).currentIndex],
              bottomNavigationBar: BottomAppBar(
                notchMargin: 8,
                shape: const CircularNotchedRectangle(),
                color: AppColors.bottomNavigation,
                child: BottomNavigationBar(
                  currentIndex: HomeCubit.get(context).currentIndex,
                  backgroundColor: Colors.transparent,
                  selectedItemColor: Colors.white,
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    HomeCubit.get(context).changeBottomNav(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard),
                      label: 'Dash',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Clients',
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: AppColors.floatingAction,
                onPressed: () {
                  //showAddTaskSheet(context);
                },
                child: const Icon(Icons.home),
              ),
              floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,

              extendBody: true,
            );
          },
        ));
  }
}
