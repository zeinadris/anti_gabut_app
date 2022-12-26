import 'package:flutter/material.dart';

class ZensProfile extends StatelessWidget {
  const ZensProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: Center(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 300,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 64,
                    child:
                        Image(image: AssetImage('assets/img/zens_profile.png')),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Zein Adri Saputro',
                            style: TextStyle(
                                fontSize: 24, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Multi-Platform Developer',
                            style: TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on),
                              Text(
                                'Pucangsawit, Jebres, Surakarta',
                                style: TextStyle(
                                    fontSize: 16, fontStyle: FontStyle.italic),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              )),
              color: Color(0xFFE8C4C4),
            ),
            Container(
              width: 400,
              height: 100,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          color: Colors.lightGreenAccent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.whatsapp),
                                iconSize: 36,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text(
                                    '088802675025',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.lightGreenAccent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.email_outlined),
                                iconSize: 36,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text(
                                    'zeinadri@gmail.com',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.lightGreenAccent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.facebook),
                                iconSize: 36,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text(
                                    'Zein Adri Saputro',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              color: Color(0xFFFCF9BE),
            ),
            Container(
              width: 400,
              color: Color(0xFFFCF9BE),
              child: Padding(
                padding: EdgeInsets.only(top: 24, left: 24),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'About Zein',
                    style: TextStyle(fontSize: 24, fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
            ),
            Container(
              width: 400,
              height: 300,
              color: Color(0xFFFCF9BE),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          color: Colors.amberAccent,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: const Text(
                              "Saya adalah seorang Developer pemula yang bergerak pada bidang Multi-Platform Apps. Dulu saya adalah anak IPS yang sangat tertarik pada dunia programming I Love Programming. I Love my Job, and don't stop learning!.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                      )),
                    ]),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
