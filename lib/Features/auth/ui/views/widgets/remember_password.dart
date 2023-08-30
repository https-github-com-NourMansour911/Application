import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../view_models/password_cubit/password_cubit.dart';
import 'Custom_CheckBox.dart';

class RememberPassword extends StatelessWidget {
  const RememberPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          BlocBuilder<PasswordCubit, PasswordState>(
            builder: (context, state) {
              return Transform.scale(
                scale: 0.8,
                child: CkBox(
                  Value: BlocProvider.of<PasswordCubit>(context).isSaved,
                  onChanged: (bool? newValue) {
                    BlocProvider.of<PasswordCubit>(context)
                        .SavePassword(newValue);
                  },
                ),
              );
            },
          ),
          Text('Remember Password', style: notes),
        ],
      ),
    );
  }
}
