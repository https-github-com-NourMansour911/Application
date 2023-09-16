import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.obscure = false,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.validate = true,
    this.prefixIcon,
    this.isEdit = false,
  });
  final bool obscure;
  final bool isEdit;
  final bool validate;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
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
      initialValue: isEdit ? hint : null,
      validator: (value) {
        if (value!.isEmpty && validate) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      cursorColor: const Color(0xff9D9FA0),
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.w),
                  prefixIcon!,
                  SizedBox(width: 8.w),
                ],
              )
            : null,
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
      borderSide: BorderSide(
        color: Colors.black.withOpacity(0.7),
        width: 1.h,
      ),
    );
  }
}
