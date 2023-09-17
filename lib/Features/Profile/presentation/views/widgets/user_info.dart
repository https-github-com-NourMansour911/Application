import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getInfo() async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String name = pref.getString('name')!;
      String email = pref.getString('email')!;
      String img = pref.getString('img')!;
      return {
        'name': name,
        'email': email,
        'img': img,
      };
    }

    return FutureBuilder(
      future: getInfo(),
      builder: (context, snapshot) {
        Map<String, String> info = {};
        if (snapshot.hasData) {
          info = snapshot.data as Map<String, String>;
          print(info['img']!);
        }
        return snapshot.hasData
            ? Column(
                children: [
                  Center(
                    child: info['img'] != ''
                        ? CircleAvatar(
                            radius: 50.w,
                            backgroundImage: AssetImage(info['img']!),
                          )
                        : CircleAvatar(
                            radius: 50.w,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: SvgPicture.asset(
                                    Assets.imagesProfile,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                  SizedBox(height: 18.h),
                  Text(
                    info['name']!,
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    info['email']!,
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: MyColors.heavyGrey,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            : Center(
                child: CircularProgressIndicator(
                  color: MyColors.primaryColor,
                ),
              );
      },
    );
  }
}
