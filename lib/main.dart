import 'package:e_gem/Features/OnBoarding/UI/views/Splash_view.dart';
import 'package:e_gem/Features/OnBoarding/ui/view_models/cubit/p_tracker_cubit.dart';
import 'package:e_gem/core/BlocObserver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => PTrackerCubit(),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashView(),
          ),
        );
      },
    );
  }
}
