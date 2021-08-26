import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
          backgroundColor: Colors.brown,
          title: Center(child: Text('AppDog')),
        ),
        body: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: -(240 / 4.7),
                  left: MediaQuery.of(context).size.width - (240 / 1.6),
                  child: Opacity(
                    child: Image.asset(
                      'assets/snake.png',
                      height: 24,
                      width: 23,
                    ),
                    opacity: 0.1,
                  ),
                )
              ],
            ),
            Expanded(
                child: AnimationLimiter(
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(12),
                  addAutomaticKeepAlives: true,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5),
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    var color = index % 2 == 0 ? Colors.black : Colors.red;
                    return AnimationConfiguration.staggeredGrid(
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
                    );
                  }),
            )),
          ],
        ));
  }
}
