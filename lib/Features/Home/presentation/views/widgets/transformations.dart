import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transformation extends StatelessWidget {
  const Transformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          mainAxisExtent: 170,
        ),
        shrinkWrap: true,
        children: [
          Card(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 0.25,
                color: Colors.transparent,
              ),
            ),
            color: MyColors.lightGrey,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
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
                    height: 8.h,
                  ),
                  Text(
                    'Ahmed Mohsen',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.sp,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    '20 Years',
                    style: TextStyle(
                      color: MyColors.grey,
                      fontSize: 12.sp,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
