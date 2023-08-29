import 'package:e_gem/Features/OnBoarding/UI/views/preview.dart';
import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Get.to(() => Preview(),
          transition: Transition.fade, duration: const Duration(seconds: 1));
    });
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            Assets.imagesSplash,
            height: 155.h,
            width: 206.w,
          ),
          SizedBox(height: 28.h),
          Text(
            'E-Gem',
            style: title.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "Choose Your coach",
            style: regular.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
