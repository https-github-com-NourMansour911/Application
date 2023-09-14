import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercise_name.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercise_reps.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard(
      {Key? key,
      required this.exercise,
      required this.reps,
      required this.exeImage})
      : super(key: key);

  final exercise;
  final reps;
  final exeImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67.h,
      padding: const EdgeInsets.fromLTRB(4, 4, 14, 4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: MyColors.lightGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  exeImage,
                  fit: BoxFit.fitWidth,
                  width: 98.w,
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExerciseName(exercise: exercise),
                  SizedBox(
                    height: 8.h,
                  ),
                  ExerciseReps(reps: reps),
                ],
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
          ),
        ],
      ),
    );
  }
}
