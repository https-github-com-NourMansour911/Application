// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_gem/constants.dart';

class CkBox extends StatelessWidget {
  final void Function(bool?)? onChanged;
  final bool Value;

  const CkBox({
    Key? key,
    this.onChanged,
    required this.Value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: Value,
      side: BorderSide(color: kfadedColor),
      onChanged: onChanged,
      visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.all(kprimaryColor),
    );
  }
}
