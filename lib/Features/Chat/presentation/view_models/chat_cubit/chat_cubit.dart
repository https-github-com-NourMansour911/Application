import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(super.initialState);
  void addMessage(
    String id, {
    required String text,
    required ScrollController scrollController,
    required TextEditingController controller,
    required FocusNode focusNode,
  }) {}
  /* final CollectionReference _messages =
      FirebaseFirestore.instance.collection('messages');
   {
    if (text.trimLeft() != "" || text.trimRight() != "") {
      scrollController.position.animateTo(
          scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.linear);
      focusNode.requestFocus();
      _messages.add({
        'message': text,
        'createdAt': DateTime.now().toString(),
        'id': id // John Doe
        // 42
      });
      controller.clear();
    }
  }

  List<Message> messagesList = [];
  void getMessage() {
    _messages
        .orderBy('createdAt', descending: true)
        .snapshots()
        .listen((event) {
      messagesList.clear();
      for (var doc in event.docs) {
        messagesList.add(Message.fromJson(doc));
      }

      emit(ChatSuccess());
    });
  } */
}
