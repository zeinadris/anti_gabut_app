import 'package:flutter/material.dart';

class TedosProfile extends StatelessWidget {
  const TedosProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Image(image: AssetImage('assets/img/tedo_photo.png')),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tedo Ana',
                          style: TextStyle(
                              fontSize: 24, fontStyle: FontStyle.italic),
                        ),
                        Text(
                          '210101000',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.class_),
                            Text(
                              'SI21A2',
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
                        color: Colors.redAccent,
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
                                  '089649783850',
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
                        color: Colors.redAccent,
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
                                  'Tidak Diketahui',
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
                        color: Colors.redAccent,
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
                                  'Tidak Diketahui',
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
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'About Tedo',
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
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      color: Colors.amberAccent,
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ty",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          )),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    )));
  }
}
