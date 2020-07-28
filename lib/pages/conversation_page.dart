import 'package:chat60d/widgets/chat_app_bar.dart';
import 'package:chat60d/widgets/chat_list_widget.dart';
import 'package:chat60d/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                ChatListWidget(),
                InputWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
