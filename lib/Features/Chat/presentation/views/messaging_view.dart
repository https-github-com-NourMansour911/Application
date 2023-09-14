import 'package:e_gem/Features/Chat/presentation/views/bodies/messaging_view_body.dart';
import 'package:e_gem/Features/Chat/presentation/views/widgets/chat_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagingView extends StatelessWidget {
  const MessagingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: MessagingViewBody(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ChatFooter(),
      ),
    );
  }
}
