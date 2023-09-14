import 'package:flutter/material.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/category.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/home_app_bar.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/image_slider.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        HomeAppBar(),
        SizedBox(height: 10.h),
        CustomSearchBar(hint: 'Search your coach'),
        SizedBox(height: 10.h),
        ImageSlider(),
        Category(categoryType: CategoryType.Top_Rated),
        SizedBox(height: 10.h),
        Category(categoryType: CategoryType.Super_Heroes),
        SizedBox(height: 16.h),
      ],
    );
  }
}
