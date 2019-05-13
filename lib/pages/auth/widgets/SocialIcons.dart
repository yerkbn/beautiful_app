import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final IconData iconData;
  final Function onPressed;

  SocialIcon({this.colors, this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: colors,
                tileMode: TileMode.clamp,
              )),
          child: RawMaterialButton(
            shape: CircleBorder(),
            onPressed: onPressed,
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          )),
    );
  }
}
