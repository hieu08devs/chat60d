import 'dart:math';

import 'package:chat60d/config/assets.dart';
import 'package:chat60d/config/palette.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;
  @override
  Widget build(BuildContext context) {
    var textHeading = Theme.of(context).textTheme.headline5;
    var textStyle = TextStyle(color: Palette.secondaryTextColor);
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.black)],
      ),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(Icons.attach_file),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Ronaldo", style: textHeading),
                                  Text("@cris", style: textStyle),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Photos",
                          style: textStyle,
                        ),
                        VerticalDivider(
                          width: 30,
                          color: Palette.primaryTextColor,
                        ),
                        Text(
                          "Videos",
                          style: textStyle,
                        ),
                        VerticalDivider(
                          width: 30,
                          color: Palette.primaryTextColor,
                        ),
                        Text(
                          "Files",
                          style: textStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: Image.asset(Assets.user).image,
                    maxRadius: min(height, width * 0.3) * 0.3,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
