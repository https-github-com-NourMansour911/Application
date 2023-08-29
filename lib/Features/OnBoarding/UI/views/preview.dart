import 'package:e_gem/Features/OnBoarding/ui/views/widgets/singleview.dart';
import 'package:e_gem/Features/auth/views/LogIn.dart';
import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Preview extends StatefulWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  final _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: const [
                  Singleview(
                      image: Assets.imagesP1,
                      title: "Train with top personal coaches",
                      subtitle:
                          "Book virtual personal training sessions\nwith our certified coaches."),
                  Singleview(
                      image: Assets.imagesP2,
                      title: "Track your progress",
                      subtitle:
                          "Stay motivated by tracking your\nprogress on your fitness journey."),
                  Singleview(
                      image: Assets.imagesP3,
                      title: "Plan your meal",
                      subtitle:
                          "Take control of your nutrition with our\nmeal planning feature."),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: kprimaryColor),
            ),
            SizedBox(
              height: 50.h,
            ),
            index == 2
                ? WideButton(
                    title: '''Let's Started''',
                    onTap: () {
                      Get.to(() => LogIn());
                      dispose();
                    },
                  )
                : WideButton(
                    onTap: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    color: Color(0xFFEFEFEF),
                    title: "Next",
                  ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}