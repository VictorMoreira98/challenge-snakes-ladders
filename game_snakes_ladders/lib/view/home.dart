import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/view/footer.dart';
import 'package:game_snakes_ladders/widgets/avatar-player.dart';
import 'package:game_snakes_ladders/widgets/image-item.dart';
import 'package:game_snakes_ladders/widgets/play-dices.dart';
import 'package:game_snakes_ladders/widgets/play.dart';
import 'package:game_snakes_ladders/widgets/player.dart';
import 'package:get_it/get_it.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SnakesLadders _snakesLaddersStore;
  @override
  void initState() {
    super.initState();
    _snakesLaddersStore = GetIt.instance<SnakesLadders>();
  }

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
          Observer(
            name: "Player",
            builder: (BuildContext context) {
              return Player(
                numPlayer: _snakesLaddersStore.currentPlayer.toString(),
              );
            },
          ),
          Expanded(
            child: AnimationLimiter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(children: [
                  Observer(
                    builder: (BuildContext context) {
                      return Container(
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
                                  columnCount: 1,
                                  child: ScaleAnimation(
                                    child: Observer(
                                      builder: (BuildContext context) {
                                        return Stack(
                                          children: [
                                            Container(
                                              width: 100,
                                              height: 100,
                                              decoration:
                                                  BoxDecoration(color: color),
                                              child: Center(
                                                child: Text(
                                                  (100 - index).toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Play(
                                              totalPlayerOne:
                                                  _snakesLaddersStore
                                                      .totalPlayerOne,
                                              totalPlayerTwo:
                                                  _snakesLaddersStore
                                                      .totalPlayerTwo,
                                              currentPlayer: _snakesLaddersStore
                                                  .currentPlayer,
                                              index: index,
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            }),
                      );
                    },
                  ),
                  ImageItem(),
                  Footer(
                    snakeLaddersStore: _snakesLaddersStore,
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
