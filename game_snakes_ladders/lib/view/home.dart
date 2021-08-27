import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:game_snakes_ladders/view/image-item.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 40,
            child: Center(
                child: Text(
              'Jogador 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange[300]),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.orange[100])]),
          ),
          Expanded(
              child: AnimationLimiter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange[300]),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.orange[100])]),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(12),
                      addAutomaticKeepAlives: true,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 9),
                      itemCount: 100,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var color = index % 2 == 0
                            ? Colors.black38
                            : Colors.orange[300];
                        return Container(
                          child: AnimationConfiguration.staggeredGrid(
                            position: index,
                            duration: const Duration(milliseconds: 375),
                            columnCount: 2,
                            child: ScaleAnimation(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(color: color),
                                child: Center(
                                    child: Text(
                                  (100 - index).toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                ImageItem(),
                Column(
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
                              boxShadow: [
                                BoxShadow(color: Colors.orange[100])
                              ]),
                        ),
                        Container(
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
                              boxShadow: [
                                BoxShadow(color: Colors.orange[100])
                              ]),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/dice/dice_one.png',
                            height: 100,
                            width: 100,
                          ),
                          Image.asset(
                            'assets/dice/dice_one.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
          )),
        ],
      ),
    );
  }
}
