import 'package:e_gem/Features/Exercise/presentation/views/bodies/exercises_view_body.dart';
import 'package:flutter/material.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ExecisesViewBody()));
  }
}
