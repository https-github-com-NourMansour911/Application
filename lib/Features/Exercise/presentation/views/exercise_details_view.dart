import 'package:e_gem/Features/Exercise/presentation/views/bodies/exercise_details_view_body.dart';
import 'package:flutter/material.dart';

class ExerciseDetailsView extends StatelessWidget {
  const ExerciseDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ExerciseDetailsViewBody()));
  }
}
