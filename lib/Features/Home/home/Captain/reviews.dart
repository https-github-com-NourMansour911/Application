import 'package:e_gem/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Container(
              width: 328,
              height: 146,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFEF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset(Assets.imagesReview1,height: 30,width: 30,color: Color(0xFF626262),),
                        radius: 32,
                      )

                    ],
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
