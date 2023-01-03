import 'package:anti_gabut_app/game_pong/pong.dart';
import 'package:anti_gabut_app/game_snake/game_snake.dart';
import 'package:anti_gabut_app/game_tic_tac_toe/pages/home/home_page.dart';
import 'package:anti_gabut_app/menu/menu_pong.dart';
import 'package:anti_gabut_app/menu/menu_snake.dart';
import 'package:anti_gabut_app/profile/restu_profile.dart';
import 'package:anti_gabut_app/profile/tedo_profile.dart';
import 'package:anti_gabut_app/profile/zens_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int _selectedIndex = 0;

  //ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Column(children: [
        Container(
          color: Colors.white12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              color: Colors.greenAccent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: ListTile(
                      leading:
                          Image(image: AssetImage('assets/img/ping-pong.png')),
                      title: Text("Game Pong"),
                      subtitle: Text("Tangkap bola biji dengan spond."),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text('MAINKAN GAME'),
                        onPressed: () {
                          Get.to(() => MenuPong());
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              color: Colors.yellowAccent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: ListTile(
                      leading: Image(
                          image: AssetImage('assets/img/tic-tac-toe.png')),
                      title: Text("Tic Tac Toe"),
                      subtitle:
                          Text("Asah kemampuan berpikir dengan game ini."),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text('MAINKAN GAME'),
                        onPressed: () {
                          Get.to(() => const TicTacPage());
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              color: Colors.redAccent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: ListTile(
                      leading: Image(image: AssetImage('assets/img/snake.png')),
                      title: Text("Game Snake"),
                      subtitle:
                          Text("Gerakan ular anda untuk menangkap makanan"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text('MAINKAN GAME'),
                        onPressed: () {
                          Get.to(() => const MenuSnake());
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    ),
    Center(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 128,
                  backgroundColor: Colors.teal[100],
                  child:
                      Image(image: AssetImage('assets/img/zens_profile.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => ZensProfile());
                      },
                      child: Text(
                        "ZEIN",
                        style: TextStyle(fontSize: 36),
                      )),
                )
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 128,
                  backgroundColor: Colors.teal[100],
                  child: Image(image: AssetImage('assets/img/tedo_photo.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => TedosProfile());
                      },
                      child: Text(
                        "TEDO",
                        style: TextStyle(fontSize: 36),
                      )),
                )
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 128,
                  backgroundColor: Colors.teal[100],
                  backgroundImage: AssetImage('assets/img/restu_photo.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => RestuProfile());
                      },
                      child: Text(
                        "RESTU",
                        style: TextStyle(fontSize: 36),
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    )),
    SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ANTI GABUT APP",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: CircleAvatar(
                radius: 81,
                backgroundColor: Colors.teal[100],
                child: Image(image: AssetImage('assets/img/bored-256.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Card(
                      color: Colors.limeAccent,
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                      ))),
            )
          ],
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anti Gabut'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Anggota',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album_outlined),
            label: 'Tentang Kami',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

// class SnakeButton extends StatefulWidget {
//   const SnakeButton({Key? key}) : super(key: key);

//   @override
//   _SnakeButton createState() => _SnakeButton();
// }

// class _SnakeButton extends State<SnakeButton> {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       child: const Text('MAINKAN GAME'),
//       onPressed: () {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const GameSnake()));
//       },
//     );
//   }
// }

// class TicButton extends StatefulWidget {
//   const TicButton({Key? key}) : super(key: key);

//   @override
//   _TicButton createState() => _TicButton();
// }

// class _TicButton extends State<TicButton> {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       child: const Text('MAINKAN GAME'),
//       onPressed: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => const HomePage()));
//       },
//     );
//   }
// }
