import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 150.h,
          padding: const EdgeInsets.all(18),
          decoration: ShapeDecoration(
            color: MyColors.lightGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage(
                        Assets.imagesReview,
                      ),
                      radius: 30),
                  SizedBox(
                    width: 19.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alea Cover',
                        style: TextStyle(
                          color: Color(0xFF110805),
                          fontSize: 15.sp,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        //itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'Now',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF110805),
                      fontSize: 11.sp,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.18.h,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: Color(0xFF110805),
                  fontSize: 13.sp,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
