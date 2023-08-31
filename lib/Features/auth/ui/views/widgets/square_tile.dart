import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/images.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({
    super.key,
    required this.platform,
    this.authMode = AuthMode.LogIn,
  });
  final AuthMode authMode;
  final Platform platform;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: authMode == AuthMode.LogIn ? () {} : () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 60.w,
        height: 56.h,
        decoration: BoxDecoration(
          border: Border.all(color: kfadedColor, width: 1),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: SvgPicture.asset(
          platform == Platform.google
              ? Assets.imagesGoogleIcon
              : Assets.imagesFacebookIcon,
        ),
      ),
    );
  }
}

enum Platform {
  google,
  facebook,
}
