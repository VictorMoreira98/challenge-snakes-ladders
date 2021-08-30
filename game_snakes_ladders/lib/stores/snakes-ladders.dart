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
  Motion _statusDice = Motion.pause;

  @computed
  int get currentPlayer => _currentPlayer;

  @computed
  int get currentDiceOne => _currentDiceOne;

  @computed
  int get currentDiceTwo => _currentDiceTwo;

  @action
  play(diceOne, diceTwo) {
    _currentDiceOne = diceOne;
    _currentDiceTwo = diceTwo;
    _currentPlayer = _currentPlayer == 1 ? 2 : 1;
  }
}
