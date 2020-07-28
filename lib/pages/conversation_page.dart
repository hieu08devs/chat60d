import 'package:chat60d/widgets/chat_app_bar.dart';
import 'package:chat60d/widgets/chat_list_widget.dart';
import 'package:chat60d/widgets/conversation_bottom_sheet.dart';
import 'package:chat60d/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: ChatAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                ChatListWidget(),
                GestureDetector(
                  child: InputWidget(),
                  onPanUpdate: (details) {
                    if (details.delta.dy < 0) {
                      _scaffoldKey.currentState.showBottomSheet(
                        (context) => ConversationBottomSheet(),
                      );
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
