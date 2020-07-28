import 'package:chat60d/config/palette.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEdittingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.face),
            color: Palette.primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: Palette.primaryTextColor, fontSize: 15),
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message',
                hintStyle: TextStyle(color: Palette.greyColor),
              ),
              controller: textEdittingController,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Palette.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Palette.greyColor, width: 1.0),
        ),
      ),
    );
  }
}
