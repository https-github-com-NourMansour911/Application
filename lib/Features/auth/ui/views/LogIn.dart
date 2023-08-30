import 'package:e_gem/Features/auth/ui/views/widgets/LogIn_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_models/password_cubit/password_cubit.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PasswordCubit(),
        ),
      ],
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom,
          ),
          child: LogInBody(),
        ),
      ),
    );
  }
}
