import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  const Player({Key key, this.numPlayer}) : super(key: key);
  final String numPlayer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      child: Center(
          child: Text(
        'Jogador ${numPlayer}',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.orange[300]),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.orange[100])]),
    );
  }
}
