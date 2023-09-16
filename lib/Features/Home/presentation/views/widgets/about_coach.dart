import 'package:e_gem/Features/Home/presentation/views/widgets/certificate.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AboutCoach extends StatelessWidget {
  const AboutCoach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      "I've been working with clients remotely for seven years, you have developed a "
                      "deep understanding of leveraging digital tools and platforms to deliver practical coaching sessions."
                      " My experience has likely allowed you to build strong communication skills, enabling me to connect with clients, "
                      "understand their needs, and provide personalized coaching experiences through virtual interactions. ",
                  style: TextStyle(
                    color: Color(0xFF626262),
                    fontSize: 11.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Subscribe now.',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        GoRouter.of(context).push(AppRouter.kCoachPlansView),
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 12.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'certifications',
            style: TextStyle(
              color: Color(0xFF110906),
              fontSize: 14.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Certificate(certificate: Asset.imagesCertificate3),
              SizedBox(
                width: 10.w,
              ),
              Certificate(certificate: Asset.imagesCertificate2),
              SizedBox(
                width: 10.w,
              ),
              Certificate(certificate: Asset.imagesCertificate1),
            ],
          )
        ],
      ),
    );
  }
}
