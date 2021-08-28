import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -30,
          left: 110,
          child: Image.asset(
            'assets/snake.png',
            height: 300,
            width: 100,
          ),
        ),
        Positioned(
          bottom: 175,
          left: 190,
          child: Image.asset(
            'assets/snake.png',
            height: 300,
            width: 100,
          ),
        ),
        Positioned(
          top: 90,
          left: 150,
          child: Image.asset(
            'assets/snake_two.png',
            height: 300,
            width: 100,
          ),
        ),
        Positioned(
          top: 170,
          left: 20,
          child: Image.asset(
            'assets/ladder.png',
            height: 300,
            width: 100,
          ),
        ),
        Positioned(
          top: 10,
          right: 50,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(150 / 360),
            child: Image.asset(
              'assets/ladder.png',
              height: 300,
              width: 100,
            ),
          ),
        ),
        Positioned(
          top: -118,
          right: 150,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(270 / 360),
            child: Image.asset(
              'assets/ladder.png',
              height: 300,
              width: 100,
            ),
          ),
        ),
      ],
    );
  }
}
