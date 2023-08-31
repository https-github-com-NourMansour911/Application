import 'package:e_gem/Features/auth/ui/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/images.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormCubit, UserFormState>(
      builder: (context, state) {
        return CustomTextField(
          hint: 'Password',
          icon: Assets.imagesPasswordIcon,
          obscure: BlocProvider.of<UserFormCubit>(context).isHidden,
          suffixIcon: GestureDetector(
            onTap: () {
              BlocProvider.of<UserFormCubit>(context).showPassword();
            },
            child: Icon(
              !BlocProvider.of<UserFormCubit>(context).isHidden
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: kfadedColor,
            ),
          ),
        );
      },
    );
  }
}
