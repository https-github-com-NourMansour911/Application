import 'package:e_gem/Features/Exercise/presentation/views/bodies/exercise_details_view_body.dart';
import 'package:e_gem/Features/Exercise/presentation/views/exercise_details_view.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercises_card.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercises_categories.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ExecisesViewBody extends StatelessWidget {
  ExecisesViewBody({Key? key}) : super(key: key);

  List keys = Strings().exercisesAndCals.keys.toList();
  List value2 = Strings().stepsAndReps.values.toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          ExercisesCategories(),
          Divider(
            color: MyColors.primaryColor,
            thickness: 0.9,
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                int idx = index;
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>
                          ExerciseDetailsViewBody(idx))),
                child: ExerciseCard(
                        exercise: keys[index],
                        reps: value2[index],
                        exeImage: Strings().exeImg[index],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
