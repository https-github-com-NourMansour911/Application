import 'package:e_gem/Features/Profile/presentation/views/widgets/app_bar.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExerciseVideo extends StatelessWidget {
  const ExerciseVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(-0.9, -0.8),
      children: [
        SizedBox(
          height: 230.h,
          child: Image.asset(
            Asset.imagesMohamedAli,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0.w),
          child: CustomAppBar(title: ''),
        ),
      ],
    );
  }
}
