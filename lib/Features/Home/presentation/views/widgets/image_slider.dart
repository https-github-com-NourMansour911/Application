import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_gem/Features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<String> images = [
    "assets/images/slider.png",
    "assets/images/slider2.png",
    "assets/images/slider3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<HomeCubit>(context);
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  reverse: false,
                  height: 140.h,
                  autoPlayInterval: Duration(seconds: 2),
                  viewportFraction: 1,
                  //enlargeFactor: 1,
                  enlargeCenterPage: true,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    cubit.changeSliderIndex(index);
                  }),
            ),
            SizedBox(height: 12.h),
            AnimatedSmoothIndicator(
              activeIndex: cubit.slider_Index,
              count: images.length,
              effect: ExpandingDotsEffect(
                dotColor: Colors.black12,
                activeDotColor: cubit.slider_Index == 0
                    ? Colors.black
                    : cubit.slider_Index == 1
                        ? Color(0xFFB04242)
                        : Color(0xFFFF6078),
                dotHeight: 8.h,
                dotWidth: 10.w,
              ),
            ),
          ],
        );
      },
    );
  }
}
