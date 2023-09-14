import 'package:e_gem/Features/auth/presentation/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/images.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    this.mode = PasswordFieldMode.Password,
    this.onChanged,
  }) : super(key: key);
  final PasswordFieldMode mode;
  final dynamic Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormCubit, UserFormState>(
      builder: (context, state) {
        return CustomTextField(
          hint: mode == PasswordFieldMode.Password
              ? 'Password'
              : mode == PasswordFieldMode.New
                  ? 'New Password'
                  : "Confirm New Password",
          icon: Assets.imagesPasswordIcon,
          onChanged: onChanged,
          obscure: mode == PasswordFieldMode.Password ||
                  mode == PasswordFieldMode.New
              ? BlocProvider.of<UserFormCubit>(context).isHidden
              : BlocProvider.of<UserFormCubit>(context).ConfirmisHidden,
          suffixIcon: GestureDetector(
            onTap: () {
              if (mode == PasswordFieldMode.Confirm) {
                BlocProvider.of<UserFormCubit>(context).showConfirmPassword();
              } else {
                BlocProvider.of<UserFormCubit>(context).showPassword();
              }
            },
            child: Icon(
              mode == PasswordFieldMode.Confirm
                  ? !BlocProvider.of<UserFormCubit>(context).ConfirmisHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined
                  : !BlocProvider.of<UserFormCubit>(context).isHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
              color: MyColors.grey,
            ),
          ),
        );
      },
    );
  }
}

enum PasswordFieldMode { Password, New, Confirm }
