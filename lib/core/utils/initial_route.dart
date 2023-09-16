import 'package:e_gem/Features/Nav_Bar/presentation/views/nav_bar.dart';
import 'package:e_gem/Features/OnBoarding/views/preview.dart';
import 'package:e_gem/Features/auth/presentation/views/LogIn_view.dart';
import 'package:flutter/material.dart';

class InitialRoute extends StatelessWidget {
  const InitialRoute({Key? key}) : super(key: key);
  static int? seen;
  @override
  Widget build(BuildContext context) {
    if (seen == null) {
      return const Preview();
    } else if (seen == 1) {
      return const LogIn();
    } else {
      return const NavBar();
    }
  }
}
