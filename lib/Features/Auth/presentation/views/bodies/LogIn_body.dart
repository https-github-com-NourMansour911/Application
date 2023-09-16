import 'package:e_gem/Features/Auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/ScreenDivider.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_options.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/remember_password.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_messages.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/switch_auth.dart';
import 'package:e_gem/core/utils/functions/show_flushbar.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LogInBody extends StatefulWidget {
  const LogInBody({
    super.key,
  });

  @override
  State<LogInBody> createState() => _LogInBodyState();
}

class _LogInBodyState extends State<LogInBody> {
  String? _email;

  String? _password;

  final GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 30.h),
          const AuthMessages(
            title: "Hello,\nWelcome Back!",
            subtitle: "Sign in and get your health personalized with our E-Gem",
          ),
          SizedBox(height: 26.h),
          CustomTextField(
            hint: 'Email',
            prefixIcon: SvgPicture.asset(Assets.imagesEmailIcon),
            onChanged: (p0) {
              _email = p0;
            },
          ),
          SizedBox(height: 16.h),
          PasswordField(
            onChanged: (p0) {
              _password = p0;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RememberPassword(),
              GestureDetector(
                onTap: () =>
                    GoRouter.of(context).push(AppRouter.kforgetpassword),
                child: Text(
                  "Forget password ?",
                  style: notes,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          BlocProvider(
            create: (context) => AuthBloc(),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  GoRouter.of(context).pushReplacement(AppRouter.kNavBar);
                } else if (state is LoginFailure) {
                  show_Flusbar(context, state.error!);
                }
              },
              builder: (context, state) {
                return WideButton(
                  title: "Sign In",
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(
                        LoginEvent(
                          email: _email!,
                          password: _password!,
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 40.h),
          const ScreenDivider(),
          SizedBox(height: 25.h),
          const AuthOptions(),
          SizedBox(
            height: 35.h,
          ),
          const SwitchAuth(
            authMode: AuthMode.LogIn,
          ),
        ],
      ),
    );
  }
}
