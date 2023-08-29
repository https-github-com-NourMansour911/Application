import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Singleview extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  const Singleview(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  State<Singleview> createState() => _SingleviewState();
}

class _SingleviewState extends State<Singleview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          widget.image,
          height: 312.h,
          width: 312.w,
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          widget.title,
          style: subtitle_20,
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          widget.subtitle,
          style: faded,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
