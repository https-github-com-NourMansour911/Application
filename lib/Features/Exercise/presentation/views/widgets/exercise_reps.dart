import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';

class ExerciseReps extends StatelessWidget {
  const ExerciseReps({Key? key, required this.reps}) : super(key: key);

  final reps;
  @override
  Widget build(BuildContext context) {
    return Text(
      reps,
      style: TextStyle(
        color: MyColors.primaryColor,
        fontSize: 12,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
