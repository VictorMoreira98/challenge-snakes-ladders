import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:game_snakes_ladders/consts/dices.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/widgets/dice-item.dart';
import 'package:game_snakes_ladders/widgets/utils.dart';
import 'package:spring/spring.dart';

class PlayDices extends StatelessWidget {
  const PlayDices(
      {Key key, this.snakeLaddersStore, this.dicesOne, this.dicesTwo})
      : super(key: key);
  final SnakesLadders snakeLaddersStore;
  final int dicesOne;
  final int dicesTwo;

  @override
  Widget build(BuildContext context) {
    final random = new Random();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DiceItem(
            dice: DicesConst.dice(
              dicesOne.toString(),
            ),
            springController: SpringController(initialAnim: Motion.play),
          ),
          ElevatedButton(
            onPressed: () {
              if (snakeLaddersStore.totalPlayerOne == 100 ||
                  snakeLaddersStore.totalPlayerTwo == 100) {
                Utils.dialogFinish(context);
              } else {
                var diceOne = 1 + random.nextInt(5);
                var diceTwo = 1 + random.nextInt(5);
                snakeLaddersStore.play(diceOne, diceTwo, context);
              }
            },
            child: Text('Jogar'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
          ),
          DiceItem(
            dice: DicesConst.dice(
              dicesTwo.toString(),
            ),
            springController: SpringController(initialAnim: Motion.play),
          ),
        ],
      ),
    );
  }
}
