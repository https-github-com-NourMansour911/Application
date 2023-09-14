import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercise_name.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercise_reps.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercise_video.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/calories.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercise_videos.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercises_card.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/steps.dart';
import 'package:e_gem/constants/exercisesImages.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExerciseDetailsViewBody extends StatelessWidget {
  final idx;

  ExerciseDetailsViewBody(
  this.idx,
  {Key? key}) : super(key: key);

  List exercise = Strings().exercisesAndCals.keys.toList();
  List cals = Strings().exercisesAndCals.values.toList();
  List steps = Strings().stepsAndReps.keys.toList();
  List reps = Strings().stepsAndReps.values.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExerciseVideos(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExerciseName(exercise: exercise[idx]),
                        ExerciseReps(reps: reps[idx]),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Calories(cals: cals[idx]),
                    SizedBox(height: 12.h,),
                    Text(
                      'Steps',
                      style: exerciseDetails,
                    ),
                    SizedBox(height: 8.h,),
                    Steps(steps: steps[idx]),
                    SizedBox(height: 12.h,),
                    Text(
                      'Next',
                      style: exerciseDetails,
                    ),
                    SizedBox(height: 8.h,),
                    ExerciseCard(exercise: exercise[idx+1], reps: reps[idx+1], exeImage: ExeImg().exeImg[idx+1]),
                    SizedBox(height: 8.h,),
                    ExerciseCard(exercise: exercise[idx+2], reps: reps[idx+2], exeImage: ExeImg().exeImg[idx+2]),
                    SizedBox(height: 8.h,),
                    ExerciseCard(exercise: exercise[idx+3], reps: reps[idx+3], exeImage: ExeImg().exeImg[idx+3]),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
