import 'package:e_gem/Features/Home/ui/views/widgets/customized_ratebar.dart';
import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickedCoach extends StatelessWidget {
  const PickedCoach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 214.h,
      padding: EdgeInsets.all(17),
      decoration: ShapeDecoration(
        color: k_lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(Assets.imagesMohamedAli),radius: 64,),
              SizedBox(width: 25.w,),
              Column(
                children: [
                  Text('Salah MO',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7.h,),
                  Text('7 years experience',
                    style: scoresText,
                  ),
                  SizedBox(height: 7.h,),
                  CustomizedRateBar(),
                ],
              ),
            ],
          ),
          Divider(color: kprimaryColor,thickness: 1),
          Text('Date',
            style: scoresText,
          ),
          Text('20 October 2021 - Wednesday',
            style: dateTime,
          ),
          Text('Time',
            style: scoresText,
          ),
          Text('09:30 AM',
            style: dateTime,
          ),
        ],
      ),
    );
  }
}
