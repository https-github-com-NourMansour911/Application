import 'package:e_gem/Features/auth/ui/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/SignUp_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserFormCubit(),
        ),
      ],
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SignUpBody(),
        ),
      ),
    );
  }
}
