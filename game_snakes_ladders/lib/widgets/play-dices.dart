import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/widgets/dice-item.dart';

class PlayDices extends StatelessWidget {
  const PlayDices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int diceOne;
    int diceTwo;
    final random = new Random();

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 20,
              child: Center(
                  child: Text(
                'Dado 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange[300]),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.orange[100])]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Container(
                width: 100,
                height: 20,
                child: Center(
                    child: Text(
                  'Dado 2',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange[300]),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.orange[100])]),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DiceItem(),
              ElevatedButton(
                onPressed: () {
                  diceOne = 1 + random.nextInt(5);
                  diceTwo = 1 + random.nextInt(5);
                },
                child: Text('Jogar'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
              ),
              DiceItem(),
            ],
          ),
        ),
      ],
    );
  }
}
