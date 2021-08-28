import 'package:flutter/material.dart';

class DiceItem extends StatelessWidget {
  const DiceItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dice/dice_one.png',
      height: 100,
      width: 100,
    );
  }
}
