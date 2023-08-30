import 'package:e_gem/Features/auth/ui/views/widgets/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SquareTile(
          platform: Platform.google,
        ),
        SizedBox(
          width: 24.w,
        ),
        SquareTile(
          platform: Platform.facebook,
        ),
      ],
    );
  }
}
