import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OptionTile extends StatelessWidget {
  const OptionTile(
      {Key? key, required this.pre_icon, required this.title, this.path})
      : super(key: key);
  final Widget pre_icon;
  final String title;
  final String? path;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (path != null) {
          GoRouter.of(context).push(path!);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  pre_icon,
                  SizedBox(width: 20.w),
                  Text(title, style: regular),
                ],
              ),
            ),
            if (title != "Log Out")
              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 18.sp),
          ],
        ),
      ),
    );
  }
}
