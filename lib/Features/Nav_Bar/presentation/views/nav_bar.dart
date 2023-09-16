import 'package:e_gem/Features/Chat/presentation/views/chats_view.dart';
import 'package:e_gem/Features/Exercise/presentation/views/exercises_view.dart';
import 'package:e_gem/Features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:e_gem/Features/Home/presentation/views/home_view.dart';
import 'package:e_gem/Features/Nav_Bar/presentation/view_models/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:e_gem/Features/Nav_Bar/presentation/views/widgets/nav_bar_item.dart';
import 'package:e_gem/Features/Profile/presentation/views/profile_view.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> navScreens = [
      HomeView(),
      ExercisesView(),
      ChatsView(),
      ProfileView(),
    ];

    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: NavBarItem(index: 0), label: "Home"),
      BottomNavigationBarItem(icon: NavBarItem(index: 1), label: "Exercise"),
      BottomNavigationBarItem(icon: NavBarItem(index: 2), label: "Chat"),
      BottomNavigationBarItem(icon: NavBarItem(index: 3), label: "Profile"),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavBarCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          BlocProvider.of<HomeCubit>(context).getCoaches('token');
          var nav_cubit = BlocProvider.of<NavBarCubit>(context);
          return Scaffold(
            bottomNavigationBar: SizedBox(
                height: 75.h,
                child: BottomNavigationBar(
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  unselectedLabelStyle: TextStyle(
                    color: MyColors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  selectedItemColor: MyColors.primaryColor,
                  selectedLabelStyle: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    height: 2.5.h,
                  ),
                  type: BottomNavigationBarType.fixed,
                  currentIndex: nav_cubit.currentIndex,
                  iconSize: 24,
                  onTap: (value) {
                    nav_cubit.select(value);
                  },
                  items: items,
                )),
            body: SafeArea(child: navScreens[nav_cubit.currentIndex]),
          );
        },
      ),
    );
  }
}
