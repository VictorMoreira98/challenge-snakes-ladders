import 'package:demoji/demoji.dart';

class SnakesLaddersConst {
  static String snake = 'assets/snake.png';
  static String snake_two = 'assets/snake_two.png';
  static String ladders = 'assets/ladder.png';

  static List snakesLadders = [
    {
      'position': 40,
      'positionFuture': 24,
      'title': 'Ops... ' + Demoji.snake,
      'message': ' terá que voltar a casa 24, você caiu em uma casa onde está localizada a cabeça da cobra.'
    },
    {
      'position': 60,
      'positionFuture': 42,
      'title': 'Que azar... '+ Demoji.snake,
      'message': ' terá que voltar a casa 42, você caiu em uma casa onde está localizada a cabeça da cobra.'
    },
    {
      'position': 87,
      'positionFuture': 71,
      'title': 'Bahhh... '+ Demoji.snake,
      'message': ' terá que voltar a casa 71, você caiu em uma casa onde está localizada a cabeça da cobra.'
    },
    {
      'position': 18,
      'positionFuture': 45,
      'title': 'Que sorte... '+ Demoji.fire,
      'message': ' irá para a casa 45, você caiu em uma casa onde está localizada a base da escada.'
    },
    {
      'position': 95,
      'positionFuture': 98,
      'title': 'Boa... '+ Demoji.four_leaf_clover,
      'message': ' irá para a casa 98, você caiu em uma casa onde está localizada a base da escada.'
    },
    {
      'position': 57,
      'positionFuture': 76,
      'title': 'É teu dia... ' + Demoji.star2,
      'message': ' irá para a casa 76, você caiu em uma casa onde está localizada a base da escada.'
    }
  ];
}
