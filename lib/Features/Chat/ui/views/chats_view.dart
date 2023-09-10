import 'package:e_gem/Features/Chat/ui/views/widgets/bodies/chats_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: ChatsViewBody(),
        ),
      ),
    );
  }
}
