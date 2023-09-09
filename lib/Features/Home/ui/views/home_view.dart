import 'package:e_gem/Features/Home/ui/view_models/home_cubit/home_cubit.dart';
import 'package:e_gem/Features/Home/ui/views/widgets/bodies/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Container(
        padding: EdgeInsets.only(top: 16, right: 16, left: 16),
        child: SingleChildScrollView(
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
