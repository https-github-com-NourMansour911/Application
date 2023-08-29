import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    required this.icon,
  });
  final String icon;
  final String hint;
  final int maxLines;

  final void Function(String?)? onSaved;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      cursorColor: Color(0xff9D9FA0),
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          icon,
        ),
        hintText: hint,
        hintStyle: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: kfadedColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8.r,
        ),
        borderSide: BorderSide(color: Color(0xff9D9FA0), width: 1.h));
  }
}
