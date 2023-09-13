import 'package:e_gem/Features/Home/presentation/views/widgets/certificate.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  text: "I've been working with clients remotely for seven years, you have developed a "
                      "deep understanding of leveraging digital tools and platforms to deliver practical coaching sessions."
                      " My experience has likely allowed you to build strong communication skills, enabling me to connect with clients, "
                      "understand their needs, and provide personalized coaching experiences through virtual interactions. ",
                  style: TextStyle(
                    color: Color(0xFF626262),
                    fontSize: 12,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Subscribe now.',
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 12,
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
              Certificate(certificate: Assets.imagesCertificate3),
            ],
          )
        ],
      ),
    );
  }
}
