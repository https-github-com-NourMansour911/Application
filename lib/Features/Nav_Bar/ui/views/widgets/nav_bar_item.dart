import 'package:e_gem/Features/Nav_Bar/ui/view_models/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return SvgPicture.asset(
          index == 0
              ? Assets.imagesHomeIcon
              : index == 1
                  ? Assets.imagesExerciseIcon
                  : index == 2
                      ? Assets.imagesChatIcon
                      : Assets.imagesProfile,
          colorFilter: ColorFilter.mode(
            index == BlocProvider.of<NavBarCubit>(context).currentIndex
                ? kprimaryColor
                : kfadedColor,
            BlendMode.srcIn,
          ),
        );
      },
    );
  }
}
