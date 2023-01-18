import 'package:anti_gabut_app/game_snake/game_snake.dart';
import 'package:anti_gabut_app/menu/menu_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MenuSnake extends StatelessWidget {
  const MenuSnake({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "Game Snake",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.amberAccent),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Image(image: AssetImage('assets/img/snake.png')),
          ),
          Padding(
              padding: EdgeInsets.all(24),
              child: Container(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GameSnake()),
                      );
                    },
                    child: Text(
                      'Mulai',
                      style: TextStyle(fontSize: 24),
                    )),
              )),
          Padding(
              padding: EdgeInsets.all(24),
              child: Container(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()),
                      );
                    },
                    child: Text(
                      'Kembali',
                      style: TextStyle(fontSize: 24),
                    )),
              ))
        ],
      )),
    );
  }
}
