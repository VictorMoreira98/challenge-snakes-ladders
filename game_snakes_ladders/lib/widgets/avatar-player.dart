import 'package:flutter/material.dart';

class AvatarPlayer extends StatelessWidget {
  const AvatarPlayer({ Key key, this.color, this.size }) : super(key: key);
  final MaterialColor color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size),
      child: Container(
        // height: 0.1,
        // width: 0.1,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
        color: color.withOpacity(.4)),
      ),
    );
  }
}