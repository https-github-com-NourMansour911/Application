import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizedTextFieldWithoutIcon extends StatelessWidget {
  const CustomizedTextFieldWithoutIcon({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.obscure = false,
    this.suffixIcon,
    required this.textInputType,
  });
  final bool obscure;
  final Widget? suffixIcon;
  final String hint;
  final int maxLines;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      onChanged: onChanged,
      obscureText: obscure,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      cursorColor: const Color(0xff9D9FA0),
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: formStyle,
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
        borderSide: BorderSide(color: Colors.black.withOpacity(0.699999988079071), width: 1.h));
  }
}