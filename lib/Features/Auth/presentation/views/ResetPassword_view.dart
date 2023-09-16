import 'package:e_gem/Features/Auth/presentation/view_models/user_from/user_form_cubit.dart';
import 'package:e_gem/Features/Auth/presentation/views/bodies/ResetPassword_body.dart';
import 'package:e_gem/Features/auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: BlocProvider(
        create: (context) => UserFormCubit(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: const ResetPasswordBody()),
            ),
          ),
        ),
      ),
    );
  }
}
