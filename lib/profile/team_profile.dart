import 'package:anti_gabut_app/data/profile_model.dart';
import 'package:anti_gabut_app/menu/menu_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TeamProfil extends StatelessWidget {
  final String? nomor;
  final ModelProfile modelProfil1;
  TeamProfil({
    super.key,
    this.nomor,
    required this.modelProfil1,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  maxRadius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    maxRadius: 38,
                    backgroundColor: Colors.blue.shade50,
                    child: Image.asset('${modelProfil1.img}'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '${modelProfil1.name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Text(
                  '${modelProfil1.jobs}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Text(
                    '${modelProfil1.desc}',
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.class_rounded,
                      color: Colors.lightBlue,
                    ),
                    title: Text("NIM"),
                    subtitle: Text('${modelProfil1.nim}'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.redAccent,
                    ),
                    title: Text("Email"),
                    subtitle: Text('${modelProfil1.email}'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.whatsapp_rounded,
                      color: Colors.greenAccent,
                    ),
                    title: Text("Whatapp"),
                    subtitle: Text('${modelProfil1.wa}'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    title: Text("Facebook"),
                    subtitle: Text('${modelProfil1.fb}'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.yellowAccent,
                    ),
                    title: Text("Alamat"),
                    subtitle: Text('${modelProfil1.alamat}'),
                  ),
                  Divider(),
                  SizedBox(
                      width: 250,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar()),
                            );
                          },
                          child: Text(
                            'Kembali',
                            style: TextStyle(fontSize: 28),
                          )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
