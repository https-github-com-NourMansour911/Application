import 'package:e_gem/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Certificate extends StatelessWidget {
  const Certificate({Key? key, required this.certificate}) : super(key: key);

  final certificate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 93.h,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(certificate),
          fit: BoxFit.fitHeight,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: MyColors.primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
