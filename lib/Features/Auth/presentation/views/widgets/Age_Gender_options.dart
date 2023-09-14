import 'package:e_gem/Features/Auth/presentation/views/widgets/drop_down_field.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgeGenderOptions extends StatelessWidget {
  const AgeGenderOptions({Key? key, this.onChanged}) : super(key: key);
  final dynamic Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            hint: 'Age',
            icon: Assets.imagesGenderIcon,
            textInputType: TextInputType.number,
            onChanged: onChanged,
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
