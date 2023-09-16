import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: MyColors.primaryColor,
      behavior: SnackBarBehavior.floating,
      content: Text(message),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(12),
    ),
  );
}
