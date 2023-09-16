import 'package:e_gem/Features/Auth/presentation/view_models/user_form/user_form_cubit.dart';
import 'package:e_gem/Features/Profile/presentation/views/bodies/edit_profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserFormCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              right: 16.w,
              left: 16.w,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SingleChildScrollView(child: EditProfileViewBody()),
          ),
        ),
      ),
    );
  }
}
