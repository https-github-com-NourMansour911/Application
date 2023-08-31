import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

void customDialog(context,
    {required title,
    QuickAlertType type = QuickAlertType.success,
    onPressed,
    bool barrierDismissible = true,
    Widget? widget}) {
  QuickAlert.show(
    context: context,
    title: title,
    type: type,
    barrierDismissible: barrierDismissible,
    showConfirmBtn: false,
    borderRadius: 10.r,
    widget: widget,
  );
}
