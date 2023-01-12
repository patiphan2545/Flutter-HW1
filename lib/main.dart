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
        primarySwatch: Colors.blueGrey,
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
        title: const Text("Group member information"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.redAccent,
              blocktext: "Jeerasak Phalee",
              imgPath:
                  "https://scontent.fbkk5-3.fna.fbcdn.net/v/t39.30808-6/275375730_3099245676997956_523350226965638113_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEREjH4EwBlPmR5Fu4Bh1LjDgkN-USt2JkOCQ35RK3YmcMkgV4548zV4feENCMewxlEsXgJdlg59BGa46j5ujak&_nc_ohc=p9Ob8VsuaxUAX-QqR_v&_nc_ht=scontent.fbkk5-3.fna&oh=00_AfC-CC9JrUk8vSDwiW4p_Ylm5aiLmcZNpYstJC3663pI5w&oe=63C163D0",
              nickname: "Jonus",
              id: "ID : 633410009-7",
              about: "about : football, Movies, Play games"),
          Card(
              context: context,
              color: Colors.blueAccent,
              blocktext: "Nattawat Wilai",
              imgPath:
                  "https://scontent.fbkk5-3.fna.fbcdn.net/v/t39.30808-6/283917183_1915172192012669_129191124400808929_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHENM8iESsdESfAjgmCCCcP-8APmxhPsGL7wA-bGE-wYk-PI5kZ0VAxjlACAb2w75BI5hAnRr_cOnGNO2p_QSWX&_nc_ohc=MDovlkKLGbkAX_vM6pT&_nc_ht=scontent.fbkk5-3.fna&oh=00_AfCLQLNQqhSVc0xyAkG_rM-PgU6hwXmFzMdiBZAcGCelSg&oe=63C1BA44",
              nickname: "Bom",
              id: "ID : 633410013-6",
              about: "about : football, Movies, Play games"),
          Card(
              context: context,
              color: Colors.greenAccent,
              blocktext: "Tanakon Wanit",
              imgPath:
                  "https://scontent.fbkk5-6.fna.fbcdn.net/v/t39.30808-6/321438238_1245726009621386_359110140792862665_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEll7MLAw_JuU3QMC4UabbHo02Z4PVmLWujTZng9WYta4JV_8b5ZH3pKds9BtPpiI5-YJngWKBfT3CrrAKoxcJV&_nc_ohc=Q9qWRZdNtM0AX_7PpAY&_nc_ht=scontent.fbkk5-6.fna&oh=00_AfBOzuIUT7Oyg_Z-CsTNBIRERlMVuOePqCRpX59Z5GsxRw&oe=63C250A9",
              nickname: "Kate",
              id: "ID : 633410014-4",
              about: "about : football, Movies, Play games"),
          Card(
              context: context,
              color: Colors.yellowAccent,
              blocktext: "Anusit Kitudomsuk",
              imgPath:
                  "https://scontent.fbkk5-4.fna.fbcdn.net/v/t39.30808-6/321287211_848595556407400_7704011169296610361_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGcOUd32vReQPhhZokI9ZGFZW8qCRSKZ4dlbyoJFIpnh3ZmkB0TveTPJA2A3Nmrvyzg2DGZStPX_-YJwyiU4zTd&_nc_ohc=cZ7x6vdBqm0AX-fsh8k&_nc_ht=scontent.fbkk5-4.fna&oh=00_AfBCiqwuuxJqAosHZomWSlasHThXqiL9ToJrOCdkCFh_Pg&oe=63C2FFB6",
              nickname: "Kanun",
              id: "ID : 633410036-4",
              about: "about : football, Movies, Play games"),
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
          title: const Text("My First Flutter App"),
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
