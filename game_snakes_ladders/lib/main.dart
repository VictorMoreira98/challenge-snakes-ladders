import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/view/home.dart';
import 'package:game_snakes_ladders/widgets/image-item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black12,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      // home: ImageItem(),
    );
  }
}
