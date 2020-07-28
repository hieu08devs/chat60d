import 'package:chat60d/config/assets.dart';
import 'package:chat60d/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: Image.asset(Assets.user).image,
                  radius: 30,
                ),
                SizedBox(width: 8),
                Column(
                  children: [
                    Text('John Doe', style: Styles.subHeading),
                    SizedBox(height: 4),
                    Text('What\'s up?', style: Styles.subText),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              DateFormat('kk:mm')
                  .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
              style: Styles.date,
            ),
          ),
        ],
      ),
    );
  }
}
