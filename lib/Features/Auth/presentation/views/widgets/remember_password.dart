import 'package:e_gem/Features/Auth/presentation/view_models/user_from/user_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_checkBox.dart';

class RememberPassword extends StatelessWidget {
  const RememberPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          BlocBuilder<UserFormCubit, UserFormState>(
            builder: (context, state) {
              return Transform.scale(
                scale: 0.8,
                child: CkBox(
                  Value: BlocProvider.of<UserFormCubit>(context).isSaved,
                  onChanged: (bool? newValue) {
                    BlocProvider.of<UserFormCubit>(context)
                        .SavePassword(newValue);
                  },
                ),
              );
            },
          ),
          Text('Remember me', style: notes),
        ],
      ),
    );
  }
}
