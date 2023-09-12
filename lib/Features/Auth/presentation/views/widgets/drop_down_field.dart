import 'package:decorated_dropdownbutton/decorated_dropdownbutton.dart';
import 'package:e_gem/Features/auth/presentation/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownField extends StatelessWidget {
  const DropDownField({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: '',
      textInputType: TextInputType.none,
      icon: Assets.imagesGenderIcon,
      suffixIcon: BlocBuilder<UserFormCubit, UserFormState>(
        builder: (context, state) {
          return DecoratedDropdownButton(
            value: BlocProvider.of<UserFormCubit>(context).Gender,
            border: Border.all(style: BorderStyle.none),
            style: formStyle,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            icon: const Icon(Icons.keyboard_arrow_down),
            items: [
              DropdownMenuItem(
                value: "Gender",
                child: Container(
                  margin: EdgeInsets.only(left: 35.w),
                  child: Text(label),
                ),
              ),
              DropdownMenuItem(
                value: "Male",
                child: Container(
                  margin: EdgeInsets.only(left: 35.w),
                  child: const Text("Male"),
                ),
              ),
              DropdownMenuItem(
                value: "Female",
                child: Container(
                    margin: EdgeInsets.only(left: 35.w),
                    child: const Text("Female")),
              )
            ],
            onChanged: (value) {
              BlocProvider.of<UserFormCubit>(context)
                  .selectGender(value.toString());
            },
          );
        },
      ),
    );
  }
}