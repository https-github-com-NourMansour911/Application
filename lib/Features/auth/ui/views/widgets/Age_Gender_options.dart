import 'package:e_gem/Features/Auth/ui/views/widgets/drop_down_field.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgeGenderOptions extends StatelessWidget {
  const AgeGenderOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomTextField(
            hint: 'Age',
            icon: Assets.imagesGenderIcon,
            textInputType: TextInputType.number,
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: DropDownField(
            label: 'Gender',
          ),
        ),
      ],
    );
  }
}
