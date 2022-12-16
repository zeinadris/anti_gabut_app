import 'package:anti_gabut_app/game_pong/pong.dart';
import 'package:anti_gabut_app/game_tic_tac_toe/pages/home/home_page.dart';
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
                  const ListTile(
                    leading:
                        Image(image: AssetImage('assets/img/ping-pong.png')),
                    title: Text("Game Pong"),
                    subtitle: Text("Tangkap bola biji anda dengan spond."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TwoButton(),
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
                  const ListTile(
                    leading:
                        Image(image: AssetImage('assets/img/tic-tac-toe.png')),
                    title: Text("Tic Tac Toe"),
                    subtitle: Text("Asah kemampuan berpikir dengan game ini."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OneButton(),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.games),
                title: Text("Tic Tac Toe"),
                subtitle: Text("Asah kemampuan berpikir dengan game ini"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: const Text('MAINKAN GAME'),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                ],
              )
            ],
          ),
        ),
      ]),
    ),
    Center(
      child: Text('Text2'),
    ),
    Center(
      child: Text('Text3'),
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

class OneButton extends StatefulWidget {
  const OneButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OneButton createState() => _OneButton();
}

class _OneButton extends State<OneButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('MAINKAN GAME'),
      onPressed: () {
        Get.to(() => const HomePage());
      },
    );
  }
}

class TwoButton extends StatefulWidget {
  const TwoButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TwoButton createState() => _TwoButton();
}

class _TwoButton extends State<TwoButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('MAINKAN GAME'),
      onPressed: () {
        Get.to(() => Pong());
      },
    );
  }
}
