import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              final image = images[index];
              return buildImage(image, index);
            },
            options: CarouselOptions(height: 144,
              autoPlay: true,
              reverse: true,
              autoPlayInterval: Duration(seconds: 2),
              viewportFraction: 1,
              //enlargeFactor: 1,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enlargeCenterPage: true,
              initialPage: 1,
              onPageChanged: (index, reason){
              setState(() {
                activeIndex = index;
              });
              }
            ),
        ),
        SizedBox(height: 10,),
        buildIndicator(),
      ],
    );
  }
  Widget buildImage(String image, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 1),
    child: SizedBox(width: double.infinity,
        child: Image.asset(image,fit: BoxFit.fill,))
  );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: const ExpandingDotsEffect(
        dotColor: Colors.black12,
        activeDotColor: Color(0xFFBB2525),
        dotHeight: 12, dotWidth: 12,
      ),
  );
}
