import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String name = pref.getString('name')!;
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getName(),
      builder: (context, snapshot) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30.h,
                      width: 30.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'E-Gem',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.40.h,
                      ),
                    )
                  ],
                ),
                Text(
                  'Hello, ${snapshot.data.toString().split(' ')[0]}',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              Assets.imagesNotification,
              height: 30.h,
              width: 30.w,
            ),
          ],
        );
      },
    );
  }
}
