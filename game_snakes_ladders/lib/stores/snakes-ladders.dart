import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/consts/snakes_ladders.dart';
import 'package:mobx/mobx.dart';
import 'package:spring/spring.dart';
import 'dart:async';
part 'snakes-ladders.g.dart';

class SnakesLadders = _SnakesLaddersBase with _$SnakesLadders;

abstract class _SnakesLaddersBase with Store {
  @observable
  int _currentPlayer = 1;

  @observable
  int _currentDiceOne = 1;

  @observable
  int _currentDiceTwo = 2;

  @observable
  int _totalPlayerTwo = 1;

  @observable
  int _totalPlayerOne = 1;

  @computed
  int get totalPlayerOne => _totalPlayerOne;

  @computed
  int get totalPlayerTwo => _totalPlayerTwo;

  @computed
  int get currentPlayer => _currentPlayer;

  @computed
  int get currentDiceOne => _currentDiceOne;

  @computed
  int get currentDiceTwo => _currentDiceTwo;

  @action
  play(diceOne, diceTwo, context) {
    _currentDiceOne = diceOne;
    _currentDiceTwo = diceTwo;
    if (_currentPlayer == 1) {
      _totalPlayerOne = _totalPlayerOne + diceOne + diceTwo;
      var element = SnakesLaddersConst.snakesLadders
          .where((element) => element['position'] == _totalPlayerOne);
      if (element.isNotEmpty) 
        dialog(context, element);      
            
    }
    if (_currentPlayer == 2) {
      _totalPlayerTwo = _totalPlayerTwo + diceOne + diceTwo;
      var element = SnakesLaddersConst.snakesLadders
          .where((element) => element['position'] == _totalPlayerTwo);
      if (element.isNotEmpty)
        dialog(context, element);

    }
    _currentPlayer = _currentPlayer == 1 ? 2 : 1;
  }

  dialog(context, element) {
    return showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text(element.first['title']),
            content: Text('Jogador '+_currentPlayer.toString() + element.first['message']),
            actions: [
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                        _totalPlayerOne = element.first['positionFuture'],
                      },
                  child: Text("Ok"))
            ],
          );
        });
  }
}
