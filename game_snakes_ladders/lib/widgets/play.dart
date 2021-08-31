import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/widgets/avatar-player.dart';

class Play extends StatelessWidget {
  const Play(
      {Key key,
      this.index,
      this.totalPlayerOne,
      this.totalPlayerTwo,
      this.currentPlayer})
      : super(key: key);
  final int index, totalPlayerOne, totalPlayerTwo, currentPlayer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (totalPlayerOne == (100 - index))
          AvatarPlayer(
            color: Colors.red,
            size: totalPlayerOne == totalPlayerTwo ? 8 : 3,
          ),
        if (totalPlayerTwo == (100 - index))
          AvatarPlayer(
            color: Colors.blue,
            size: 3,
          )
      ],
    );
  }
}
