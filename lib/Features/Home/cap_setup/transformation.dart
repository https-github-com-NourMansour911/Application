import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transformation extends StatelessWidget {
  const Transformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        mainAxisExtent: 166,
      ),
      shrinkWrap: true,
      children: [
        Card(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0.25.w,
              color: Colors.transparent,
            ),
          ),
          color: Color(0xFFEFEFEF),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.imagesTransformation,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Ahmed Mohsen',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '20 Years',
                  style: TextStyle(
                    color: MyColors.grey,
                    fontSize: 10.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
