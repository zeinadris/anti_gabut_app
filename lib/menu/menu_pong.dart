import 'package:anti_gabut_app/game_pong/pong.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class MenuPong extends StatelessWidget {
  const MenuPong({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "Game Pong",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.amberAccent),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Image(image: AssetImage('assets/img/ping-pong.png')),
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
                        MaterialPageRoute(builder: (context) => Pong()),
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
