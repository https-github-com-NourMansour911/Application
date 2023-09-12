import 'package:e_gem/Features/Home/presentation/views/widgets/back_button.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachImage extends StatelessWidget {
  const CoachImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(-0.9, -0.8),
      children: [
        SizedBox(
          height: 240.h,
          child: Image.asset(
            Assets.imagesMohamedAli,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
        CustomizedBackButton(),
      ],
    );
  }
}
