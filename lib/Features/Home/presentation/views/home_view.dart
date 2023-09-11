import 'package:e_gem/Features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/bodies/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
