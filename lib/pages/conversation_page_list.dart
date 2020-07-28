import 'package:chat60d/pages/conversation_page.dart';
import 'package:flutter/material.dart';

class ConverationPageList extends StatefulWidget {
  @override
  _ConverationPageListState createState() => _ConverationPageListState();
}

class _ConverationPageListState extends State<ConverationPageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
}
