import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPfield extends StatelessWidget {
  const OTPfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OTPSingleField(first: true, last: false),
        OTPSingleField(first: false, last: false),
        OTPSingleField(first: false, last: false),
        OTPSingleField(first: false, last: true),
      ],
    );
  }
}

class OTPSingleField extends StatelessWidget {
  const OTPSingleField({
    super.key,
    required this.last,
    required this.first,
  });

  final bool last;
  final bool first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.w,
      child: AspectRatio(
        aspectRatio: 0.85,
        child: TextField(
          showCursor: false,
          autofocus: false,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          textAlign: TextAlign.center,
          style:
              TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1.h),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2.w, color: const Color(0xff9D9FA0)),
                borderRadius: BorderRadius.circular(12.r)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2.w, color: MyColors.primaryColor),
                borderRadius: BorderRadius.circular(12.r)),
          ),
        ),
      ),
    );
  }
}
