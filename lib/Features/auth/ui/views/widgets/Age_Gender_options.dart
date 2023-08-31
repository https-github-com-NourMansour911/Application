import 'package:decorated_dropdownbutton/decorated_dropdownbutton.dart';
import 'package:e_gem/Features/auth/ui/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgeGenderOptions extends StatelessWidget {
  const AgeGenderOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomTextField(
          hint: 'Age',
          icon: Assets.imagesGenderIcon,
          textInputType: TextInputType.number,
        )),
        SizedBox(width: 16.w),
        Expanded(
          child: CustomTextField(
            hint: '',
            icon: Assets.imagesGenderIcon,
            suffixIcon: BlocBuilder<UserFormCubit, UserFormState>(
              builder: (context, state) {
                return DecoratedDropdownButton(
                  value: BlocProvider.of<UserFormCubit>(context).Gender,
                  border: Border.all(style: BorderStyle.none),
                  style: formStyle,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: [
                    DropdownMenuItem(
                      value: "Gender",
                      child: Container(
                        margin: EdgeInsets.only(left: 35.w),
                        child: Text("Gender"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "Male",
                      child: Container(
                        margin: EdgeInsets.only(left: 35.w),
                        child: Text("Male"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "Female",
                      child: Container(
                          margin: EdgeInsets.only(left: 35.w),
                          child: Text("Female")),
                    )
                  ],
                  onChanged: (value) {
                    BlocProvider.of<UserFormCubit>(context)
                        .selectGender(value.toString());
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
