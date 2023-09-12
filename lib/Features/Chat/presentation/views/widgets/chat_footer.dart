import 'package:e_gem/Features/Chat/presentation/view_models/chat_cubit/chat_cubit.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatFooter extends StatefulWidget {
  const ChatFooter({Key? key}) : super(key: key);

  @override
  State<ChatFooter> createState() => _ChatFooterState();
}

class _ChatFooterState extends State<ChatFooter> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      color: MyColors.lightGrey,
      child: Column(
        children: [
          Divider(
            height: 0.5,
            color: MyColors.grey,
          ),
          TextField(
            controller: _controller,
            onSubmitted: (value) {
              BlocProvider.of<ChatCubit>(context).addMessage('id',
                  text: value,
                  scrollController: _scrollController,
                  controller: _controller,
                  focusNode: _focusNode);
            },
            autofocus: false,
            focusNode: _focusNode,
            cursorColor: MyColors.primaryColor,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(),
                    Text(
                      "Send your message",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: MyColors.grey),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      child: SvgPicture.asset(Assets.imagesAddAttachmentIcon),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      child: SvgPicture.asset(Assets.imagesSendIcon),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
