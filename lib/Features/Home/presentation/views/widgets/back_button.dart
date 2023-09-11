import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CostomizedBackButton extends StatelessWidget {
  const CostomizedBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => GoRouter.of(context).pop(),
      icon: CircleAvatar(
        backgroundColor: MyColors.lightGrey,
        radius: 18,
        child: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
    );
  }
}
