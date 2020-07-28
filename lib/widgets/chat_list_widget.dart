import 'package:chat60d/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => ChatItemWidget(index),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}
