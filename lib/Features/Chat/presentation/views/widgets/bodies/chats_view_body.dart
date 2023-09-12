import 'package:e_gem/Features/Chat/presentation/views/widgets/chat_tile.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsViewBody extends StatelessWidget {
  const ChatsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32.h),
        CustomSearchBar(hint: 'Find your lost message'),
        SizedBox(height: 32.h),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ChatTile();
            },
          ),
        ),
      ],
    );
  }
}
