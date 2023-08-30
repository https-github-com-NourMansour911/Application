import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/images.dart';
import '../../view_models/password_cubit/password_cubit.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordCubit, PasswordState>(
      builder: (context, state) {
        return CustomTextField(
          hint: 'Password',
          icon: Assets.imagesPasswordIcon,
          obscure: BlocProvider.of<PasswordCubit>(context).isHidden,
          suffixIcon: GestureDetector(
            onTap: () {
              BlocProvider.of<PasswordCubit>(context).showPassword();
            },
            child: Icon(
              !BlocProvider.of<PasswordCubit>(context).isHidden
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
