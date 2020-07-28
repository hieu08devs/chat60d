import 'package:chat60d/config/palette.dart';
import 'package:chat60d/config/styles.dart';
import 'package:chat60d/widgets/chat_row_widget.dart';
import 'package:chat60d/widgets/navigation_pill_widget.dart';
import 'package:flutter/material.dart';

class ConversationBottomSheet extends StatefulWidget {
  @override
  _ConversationBottomSheetState createState() =>
      _ConversationBottomSheetState();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        children: [
          NavigationPillWidget(),
          Center(
            child: Text(
              'Message',
              style: Styles.textHeading,
            ),
          ),
          SizedBox(height: 20),
          ListView.separated(
            itemBuilder: (context, index) => ChatRowWidget(),
            separatorBuilder: (_, __) => Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(color: Palette.greyColor),
            ),
            itemCount: 5,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
