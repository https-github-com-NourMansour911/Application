import 'package:e_gem/Features/auth/ui/views/widgets/Custom_CheckBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class CardDefault extends StatelessWidget {
  CardDefault({super.key,});

  bool isDefault = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
            Transform.scale(
              scale: 1.0,
              child: SizedBox(height: 0,width: 20.w,
                child: CkBox(
                  Value: isDefault,
                  onChanged: (newValue) {
                    isDefault = newValue!;
                  },
                ),
              ),
            ),
        SizedBox(width: 10.w,),
        Text('Set as default payment card', style: scoresText),
      ],
    );
  }
}
