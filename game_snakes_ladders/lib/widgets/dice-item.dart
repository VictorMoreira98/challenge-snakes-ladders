import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class DiceItem extends StatelessWidget {
  const DiceItem({
    Key key,
    this.dice,
    this.springController
  }) : super(key: key);
  final String dice;
    final SpringController springController;

  @override
  Widget build(BuildContext context) {
    return Spring.rotate(
                springController: springController,
          alignment: Alignment.center, //def=center
          startAngle: 0, //def=0
          endAngle: 720, //def=360
          animDuration: Duration(milliseconds: 1), //def=1s
          animStatus: (AnimStatus status) {
            print(status);
          },
        child: Image.asset(
      dice,
      height: 100,
      width: 100,
    ));
  }
}
