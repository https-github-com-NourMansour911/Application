import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBuble extends StatelessWidget {
  ChatBuble({
    Key? key,
    required this.message,
    required this.isReceiver,
  }) : super(key: key);
  bool isReceiver;
  final String message;
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    return Align(
      alignment: isReceiver ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
        constraints: BoxConstraints(
          maxWidth: sw / 1.3,
        ),
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(12),
            bottomRight: const Radius.circular(12),
            topRight: Radius.circular(isReceiver ? 12 : 0),
            topLeft: Radius.circular(isReceiver ? 0 : 12),
          ),
          color:
              !isReceiver ? const Color(0xFFF9EAEA) : const Color(0xFFE8E8E8),
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: message.length > 15 ? 20 : 56.w),
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
              ],
            ),
            Text(
              '04:00 PM',
              style: TextStyle(fontSize: 12.sp, color: MyColors.heavyGrey),
            ),
          ],
        ),
      ),
    );
  }
}
