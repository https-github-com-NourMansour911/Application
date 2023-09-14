import 'package:dio/dio.dart';
import 'package:e_gem/Features/Auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/Age_Gender_options.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/ScreenDivider.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_options.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/switch_auth.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_messages.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  String? _email;
  String? _name;
  String? _password;
  String? _age;

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
              title: "Create\nNew Account",
              subtitle:
                  "Sign in and get your health personalized with our E-Gem"),
          SizedBox(height: 26.h),
          CustomTextField(
            hint: 'User Name',
            icon: Assets.imagesGenderIcon,
            onChanged: (p0) {
              _name = p0;
            },
          ),
          SizedBox(height: 10.h),
          CustomTextField(
            hint: 'Email',
            icon: Assets.imagesEmailIcon,
            onChanged: (p0) {
              _email = p0;
            },
          ),
          SizedBox(height: 10.h),
          AgeGenderOptions(
            onChanged: (p0) {
              _age = p0;
            },
          ),
          SizedBox(height: 10.h),
          PasswordField(
            onChanged: (p0) {
              _password = p0;
            },
          ),
          SizedBox(height: 30.h),
          BlocProvider(
            create: (context) => AuthBloc(),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {},
              builder: (context, state) {
                return WideButton(
                  title: "Sign Up",
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      /* BlocProvider.of<AuthBloc>(context).add(
                        RegisterEvent(
                          UserModel(
                            password: _password!,
                            name: _name!,
                            email: _email!,
                            gender: 'male',
                            age: int.parse(_age!),
                          ),
                        ),
                      ); */
                      try {
                        var token = await Dio().post(
                          'https://techtitans.puiux.org/api/register',
                          data: {
                            "email": 'noussssssrafff@gmail.com',
                            'name': 'yarab',
                            "password": 'sssssssssss',
                            "age": 5,
                            "gender": 'male'
                          },
                        );
                        return token.data;
                      } on Exception catch (e) {
                        print('$e in getToken');
                      }
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          const ScreenDivider(),
          SizedBox(height: 20.h),
          const AuthOptions(authMode: AuthMode.SignUp),
          SizedBox(height: 20.h),
          const SwitchAuth(authMode: AuthMode.SignUp),
        ],
      ),
    );
  }
}
