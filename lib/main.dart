import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ข้อมูลสมาชิกในกลุ่ม"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Color.fromARGB(255, 0, 195, 255),
              blocktext: "Narathip Phiwphan",
              imgPath:
                  "https://scontent.fbkk5-5.fna.fbcdn.net/v/t39.30808-6/311565947_1513888799055164_6416576729503128272_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFP81_JDyt40MOUCMc0McSy9VTSozpslF31VNKjOmyUXTugp8Q-41q5iu8K8xOOM6CSnNFpPysMuZSqxK5rhWc1&_nc_ohc=x6NxG5WJUMEAX9_Mr7o&_nc_ht=scontent.fbkk5-5.fna&oh=00_AfBJECtXAySfuptqaHBFeDxv0ts-2fMDinf4GCLKD0aTKA&oe=63C42E8D",
              nickname: "Flukk",
              id: "ID : 633410015-2",
              about: "about : football, Movies, สังสรรค์"),
          Card(
              context: context,
              color: Color.fromARGB(255, 255, 0, 170),
              blocktext: "Nawasin Intem",
              imgPath:
                  "https://scontent.fbkk5-5.fna.fbcdn.net/v/t39.30808-6/322180316_2377445172411647_8999569951487089387_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFM36HblS33LPzYfboq5utUfYu4Veh7Ph99i7hV6Hs-H-7r_gTLYRPnzyZTOjkAdhTVyD-qDW8ChMzBnLYQ4ylf&_nc_ohc=v8reew-_zf0AX8M9A9_&_nc_ht=scontent.fbkk5-5.fna&oh=00_AfDaTC00zetjFBugfjcS5ZFbYIoqMrDQyYe-csvM5zzenw&oe=63C57000",
              nickname: "Earth",
              id: "ID : 633410016-0",
              about: "about : football, Movies, Play games"),
          Card(
              context: context,
              color: Color.fromARGB(255, 0, 255, 55),
              blocktext: "Teerapat Limrattanaphan",
              imgPath:
                  "https://scontent.fbkk5-7.fna.fbcdn.net/v/t39.30808-6/313397206_2482224365250007_1275879670641022606_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeF_fyQORXTXeCg39huC0gGRqgKkvQyEBkyqAqS9DIQGTFLz68KXZ8u9MPYb6kt8aHcc6dDg6LVuGiFkI1x5OdRP&_nc_ohc=MbDhRVj-rBMAX-uFTvj&tn=FksMHfb3dCTdzmkC&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfAvP_9ug4x2KkPJ4861ymGVEBGLUUJjVu8hGZC6401tsw&oe=63C4C1DC",
              nickname: "Airk",
              id: "ID : 633410079-6",
              about: "about : football, Movies, Play games, สังสรรค์"),
          Card(
              context: context,
              color: Color.fromARGB(255, 147, 135, 255),
              blocktext: "Kitiikon Thamakittiphan",
              imgPath:
                  "https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.6435-9/66224926_440430226511216_3675841356485361664_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeECvrjWIQRnH4-kUKg7kdxpNL1zInGgtbU0vXMicaC1tUXQCVrhsk2p2W3zMovaoKK_dhWfxzecjMtzeZJLSdgO&_nc_ohc=yQ4ZpEyLCF4AX93ohH-&tn=FksMHfb3dCTdzmkC&_nc_ht=scontent.fbkk5-6.fna&oh=00_AfDq9_3Gn8HqhBJm0ijBqxOAe9VIx6ZV9HYJqAnomhMQPw&oe=63E79B66",
              nickname: "Sin",
              id: "ID : 633410127-1",
              about: "about : football, Movies, Play games, exercise"),
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String id,
      required String about}) {
    return Container(
      width: 250,
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      name: blocktext,
                      imPath: imgPath,
                      nickname: nickname,
                      id: id,
                      about: about)));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 85, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.nickname,
      required this.imPath,
      required this.id,
      required this.about});
  String name;
  String nickname;
  String imPath;
  String id;
  String about;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ข้อมูล"),
        ),
        body: Center(
            child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
            const Padding(padding: EdgeInsets.all(10)),
            Text(name),
            Text(id),
            Text(nickname),
            Text(about),
          ],
        )));
  }
}
