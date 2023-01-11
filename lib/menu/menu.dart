import 'package:anti_gabut_app/data/data_team.dart';

import 'package:anti_gabut_app/game_tic_tac_toe/pages/home/home_page.dart';
import 'package:anti_gabut_app/menu/menu_pong.dart';
import 'package:anti_gabut_app/menu/menu_snake.dart';

import 'package:anti_gabut_app/profile/team_profile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

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
      child: SafeArea(
          child: Container(
        child: ListTeam(),
      )),
    ),
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
                          "Anti Gabut adalah aplikasi yang dibuat agar orang-orang yang mempunyai waktu luang bisa menikmati berbagai game atau permainan yang seru dan menarik. Anda pasti sering merasa jenuh ketika tidak memiliki kegiatan yang bisa dilakukan pada waktu kosong, bingung mau melakukan apa? Ayo coba Anti Gabut dan nikmati waktu luang anda dengan memainkan macam-macam permainan yang menarik dan mudah untuk dimainkan.",
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

class ListTeam extends StatefulWidget {
  const ListTeam({Key? key}) : super(key: key);

  @override
  _ListTeam createState() => _ListTeam();
}

class _ListTeam extends State<ListTeam> {
  DataProfile dataProfile = DataProfile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: dataProfile.listprofile.length,
          itemBuilder: (_, index) => Card(
                  child: InkWell(
                onTap: (() {
                  print('pencet no $index');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => TeamProfil(
                            nomor: '$index',
                            modelProfil1: dataProfile.listprofile[index],
                          )));
                }),
                child: ListTile(
                  leading: Image.asset('${dataProfile.listprofile[index].img}'),
                  title: Text('${dataProfile.listprofile[index].name}'),
                  subtitle: Text('${dataProfile.listprofile[index].nim}'),
                ),
              ))),
    );
  }
}
