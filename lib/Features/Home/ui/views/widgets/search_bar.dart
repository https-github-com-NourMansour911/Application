import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key, required this.hint}) : super(key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEFEFEF),
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          width: 0.8.w,
          color: k_heavyGrey,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          SvgPicture.asset(
            Assets.imagesSearch,
          ),
          Expanded(
            child: TextField(
              maxLines: 1,
              cursorColor: k_grey,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintText: hint,
                hintStyle: TextStyle(
                  color: k_grey,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
