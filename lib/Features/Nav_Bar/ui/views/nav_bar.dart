import 'package:e_gem/Features/Home/ui/views/home_view.dart';
import 'package:e_gem/Features/Nav_Bar/ui/view_models/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:e_gem/Features/Nav_Bar/ui/views/widgets/nav_bar_item.dart';
import 'package:e_gem/Features/Profile/ui/views/profile_view.dart';
import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> navScreens = [
      HomeView(),
      Container(),
      Container(),
      ProfileView(),
    ];

    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: NavBarItem(index: 0), label: "Home"),
      BottomNavigationBarItem(icon: NavBarItem(index: 1), label: "Exercise"),
      BottomNavigationBarItem(icon: NavBarItem(index: 2), label: "Chat"),
      BottomNavigationBarItem(icon: NavBarItem(index: 3), label: "Profile"),
    ];

    return SafeArea(
      child: BlocProvider(
        create: (context) => NavBarCubit(),
        child: BlocBuilder<NavBarCubit, NavBarState>(
          builder: (context, state) {
            var cubit = BlocProvider.of<NavBarCubit>(context);
            return Scaffold(
              bottomNavigationBar: SizedBox(
                  height: 75.h,
                  child: BottomNavigationBar(
                    showUnselectedLabels: true,
                    showSelectedLabels: true,
                    unselectedLabelStyle: TextStyle(
                      color: kfadedColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    selectedItemColor: kprimaryColor,
                    selectedLabelStyle: TextStyle(
                      color: kprimaryColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      height: 2.5.h,
                    ),
                    type: BottomNavigationBarType.fixed,
                    currentIndex: cubit.currentIndex,
                    iconSize: 24,
                    onTap: (value) {
                      cubit.select(value);
                    },
                    items: items,
                  )),
              body: navScreens[cubit.currentIndex],
            );
          },
        ),
      ),
    );
  }
}
