import 'package:e_gem/Features/Appointment/presentation/views/widgets/customized_ratebar.dart';
import 'package:e_gem/constants/colors.dart';
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
      padding: EdgeInsets.all(18),
      decoration: ShapeDecoration(
        color: MyColors.lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: AssetImage(Asset.imagesMohamedAli),radius: 45,),
              SizedBox(width: 25.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(height: 12.h,),
          Divider(color: MyColors.primaryColor,thickness: 1),
          SizedBox(height: 12.h,),
          Text('Date',
            style: scoresText,
          ),
          SizedBox(height: 10.h,),
          Text('20 October 2021 - Wednesday',
            style: dateTime,
          ),
          SizedBox(height: 10.h,),
          Text('Time',
            style: scoresText,
          ),
          SizedBox(height: 10.h,),
          Text('09:30 AM',
            style: dateTime,
          ),
        ],
      ),
    );
  }
}
