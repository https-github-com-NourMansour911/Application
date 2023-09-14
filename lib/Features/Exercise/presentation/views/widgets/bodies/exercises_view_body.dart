import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercises_card.dart';
import 'package:e_gem/Features/Exercise/presentation/views/widgets/exercises_categories.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/constants/exercisesImages.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExecisesViewBody extends StatelessWidget {
  ExecisesViewBody({Key? key}) : super(key: key);

  List keys = Strings().exercisesAndCals.keys.toList();
  List value = Strings().stepsAndReps.values.toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          ExercisesCategories(),
          Divider(color: MyColors.primaryColor,thickness: 0.9,),
          SizedBox(height: 15.h,),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                    ExerciseCard(
                        exercise: keys[index],
                        timeCal: value[index],
                        exeImage: ExeImg().exeImg[index]),
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
