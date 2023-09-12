import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Plan extends StatefulWidget {
  const Plan({
    Key? key,
    required this.choosedPlan,
    required this.planType,
    required this.planTitle,
    required this.planPrice,
    required this.planTime,
  }) : super(key: key);

  final int choosedPlan;
  final String planType;
  final String planTitle;
  final double planPrice;
  final String planTime;

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  int? selectedPlan;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      decoration: ShapeDecoration(
        color: MyColors.lightGrey,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.0,
            color: widget.choosedPlan == selectedPlan
                ? MyColors.primaryLightColor
                : MyColors.grey,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 36.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return (widget.choosedPlan == selectedPlan)
                            ? MyColors.primaryLightColor
                            : MyColors.grey;
                      }),
                      value: widget.choosedPlan,
                      groupValue: selectedPlan,
                      onChanged: (val) {
                        setState(() {
                          selectedPlan = val as int;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.planTitle.toString(),
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          widget.planType,
                          style: TextStyle(
                            color: widget.choosedPlan == selectedPlan
                                ? MyColors.primaryColor
                                : MyColors.grey,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 40.h),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${widget.planPrice}',
                  style: TextStyle(
                    color: Color(0xFF110906),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '/${widget.planTime}',
                  style: TextStyle(
                    color: Color(0xFF110906),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    height: 1.18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
