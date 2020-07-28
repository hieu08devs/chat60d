import 'package:chat60d/config/palette.dart';
import 'package:flutter/material.dart';

class NavigationPillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: 50,
          height: 5,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Palette.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}
