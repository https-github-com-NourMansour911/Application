import 'package:e_gem/Features/auth/presentation/view_models/UserForm_cubit/UserForm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelect extends StatelessWidget {
  const GenderSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserFormCubit(),
      child: BlocBuilder<UserFormCubit, UserFormState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: DropdownButton<String>(
              value: BlocProvider.of<UserFormCubit>(context).Gender,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                BlocProvider.of<UserFormCubit>(context).selectGender(newValue!);
              },
              items: <String>[
                'Male',
                'Female',
                'Other',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
