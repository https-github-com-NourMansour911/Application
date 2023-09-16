import 'package:e_gem/Features/Exercise/presentation/views/bodies/exercise_details_view_body.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercises_card.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextCard extends StatelessWidget {
  NextCard({Key? key, required this.idx}) : super(key: key);

  final idx;
  List exercise = Strings().exercisesAndCals.keys.toList();
  List cals = Strings().exercisesAndCals.values.toList();
  List steps = Strings().stepsAndReps.keys.toList();
  List reps = Strings().stepsAndReps.values.toList();

  @override
  Widget build(BuildContext context) {
    if (idx < 7) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next',
            style: exerciseDetails,
          ),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseDetailsViewBody(idx + 1))),
              child: ExerciseCard(
                  exercise: exercise[idx + 1],
                  reps: reps[idx + 1],
                  exeImage: Strings().exeImg[idx + 1])),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseDetailsViewBody(idx + 2))),
              child: ExerciseCard(
                  exercise: exercise[idx + 2],
                  reps: reps[idx + 2],
                  exeImage: Strings().exeImg[idx + 2])),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseDetailsViewBody(idx + 3))),
              child: ExerciseCard(
                  exercise: exercise[idx + 3],
                  reps: reps[idx + 3],
                  exeImage: Strings().exeImg[idx + 3])),
        ],
      );
    } else if (idx < 8) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next',
            style: exerciseDetails,
          ),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseDetailsViewBody(idx + 1))),
              child: ExerciseCard(
                  exercise: exercise[idx + 1],
                  reps: reps[idx + 1],
                  exeImage: Strings().exeImg[idx + 1])),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseDetailsViewBody(idx + 2))),
              child: ExerciseCard(
                  exercise: exercise[idx + 2],
                  reps: reps[idx + 2],
                  exeImage: Strings().exeImg[idx + 2])),
        ],
      );
    } else if (idx < 9) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next',
            style: exerciseDetails,
          ),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseDetailsViewBody(idx + 1))),
              child: ExerciseCard(
                  exercise: exercise[idx + 1],
                  reps: reps[idx + 1],
                  exeImage: Strings().exeImg[idx + 1])),
        ],
      );
    }
    return Container();
  }
}
