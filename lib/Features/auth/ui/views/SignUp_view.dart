import 'package:e_gem/Features/auth/ui/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/ui/views/Bodies/SignUp_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const SignUpBody(),
        ),
      ),
    );
  }
}