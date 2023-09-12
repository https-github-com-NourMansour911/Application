import 'package:e_gem/Features/Chat/presentation/views/widgets/chat_buble.dart';
import 'package:e_gem/Features/Chat/presentation/views/widgets/chat_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagingViewBody extends StatelessWidget {
  const MessagingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        ChatHeader(),
        Expanded(
          child: ListView(
            children: [
              SizedBox(height: 35.h),
              ChatBuble(
                message:
                    'Firstssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
                isReceiver: false,
              ),
              ChatBuble(
                message: 'F',
                isReceiver: false,
              ),
              ChatBuble(
                message: 'Fuck uuu alll help me',
                isReceiver: true,
              ),
              ChatBuble(
                message: 'Fucksssssssssss',
                isReceiver: false,
              ),
              ChatBuble(
                message: 'Fuck uuu alll help me',
                isReceiver: false,
              ),
              ChatBuble(
                message: 'Fuck uuu alll help me',
                isReceiver: false,
              ),
              ChatBuble(
                message: 'Fuck uuu alll help me',
                isReceiver: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
