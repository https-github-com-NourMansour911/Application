import 'package:e_gem/Features/Auth/ui/views/widgets/bodies/ResetPassword_body.dart';
import 'package:e_gem/Features/auth/ui/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
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
      child: SafeArea(
        child: BlocProvider(
          create: (context) => UserFormCubit(),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              margin: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const ResetPasswordBody(),
            ),
          ),
        ),
      ),
    );
  }
}
