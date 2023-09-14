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
                message: 'Qui qui proident elit dolore et.',
                isReceiver: false,
              ),
              ChatBuble(
                message:
                    'Ea non fugiat occaecat sint deserunt laboris consequat nisi eu aliqua consequat dolor sit cupidatat. Anim ad consequat ad ea.',
                isReceiver: false,
              ),
              ChatBuble(
                message:
                    'Ad velit ut ut veniam aliquip sint ullamco elit exercitation ut veniam.',
                isReceiver: true,
              ),
              ChatBuble(
                message:
                    'Labore pariatur sint est laboris excepteur officia non excepteur elit',
                isReceiver: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
