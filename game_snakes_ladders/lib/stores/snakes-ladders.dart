import 'package:mobx/mobx.dart';
part 'snakes-ladders.g.dart';

class SnakesLadders = _SnakesLaddersBase with _$SnakesLadders;

abstract class _SnakesLaddersBase with Store {
  @observable
  int _currentPlayer;

  @action
  play(diceOne, diceTwo){
    
  }


}