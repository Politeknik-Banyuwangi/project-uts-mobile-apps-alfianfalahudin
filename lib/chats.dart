import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomCard(
              "alfian",
              "Hallo",
              Icons.done_all,
              Colors.grey,
              "08:00",
            ),
            CustomCard(
              "tono",
              "ok",
              Icons.done_all,
              Colors.blue,
              "07:00",
            ),
            CustomCard(
              "tini",
              "oi",
              Icons.done_all,
              Colors.blue,
              "11:00",
            ),
            CustomCard(
              "budi",
              "apa kabar",
              Icons.done_all,
              Colors.grey,
              "12:00",
            ),
            CustomCard(
              "anton",
              "dimana?",
              Icons.done_all,
              Colors.blue,
              "04:00",
            ),
            CustomCard(
              "dini",
              "tugas apa?",
              Icons.done_all,
              Colors.grey,
              "12:10",
            ),
            CustomCard(
              "rama",
              "udah selesesai tugasnya👌",
              Icons.done_all,
              Colors.blue,
              "17:00",
            ),
            CustomCard(
              "yogi",
              "besok ada tugas",
              Icons.done_all,
              Colors.grey,
              "16:00",
            ),
            CustomCard(
              "fajar",
              "👍🙌🤣",
              Icons.done_all,
              Colors.blue,
              "07:00",
            ),
            CustomCard(
              "dafa",
              "makasih👍",
              Icons.done_all,
              Colors.grey,
              "07:10",
            ),
            CustomCard(
              "nanda",
              "besok ada kerjaan",
              Icons.done_all,
              Colors.grey,
              "08:00",
            ),
            CustomCard(
              "ilma",
              "bisa no 1😂",
              Icons.done_all,
              Colors.blue,
              "13:00",
            ),
            CustomCard(
              "riza",
              "aku udah sampai nih",
              Icons.done_all,
              Colors.blue,
              "14:00",
            ),
            CustomCard(
              "dinda",
              "jangan lupa tugasnya👌",
              Icons.done_all,
              Colors.blue,
              "07:01",
            ),
            CustomCard(
              "fatwa",
              "ini kamu bisa yan🙌🤣",
              Icons.done_all,
              Colors.blue,
              "07:30",
            ),
            CustomCard(
              "tiara",
              "besok bawah uang kas",
              Icons.done_all,
              Colors.grey,
              "07:05",
            ),
            CustomCard(
              "yoga",
              "kamu bisa nggak no 1👌",
              Icons.done_all,
              Colors.blue,
              "08:00",
            ),
            CustomCard(
              "adel",
              "besok saya ijinkan ya",
              Icons.done_all,
              Colors.blue,
              "20:00",
            ),
            CustomCard(
              "ucup",
              "besok kamu libur",
              Icons.done_all,
              Colors.grey,
              "21:00",
            ),
            CustomCard(
              "rofiki",
              "oyi👌",
              Icons.done_all,
              Colors.blue,
              "22:00",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget CustomCard(String name, String name1, IconData iconData,
      Color iconColor, String time) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i0.wp.com/www.cirebonkota.go.id/wp-content/uploads/2018/05/jokowi.jpg"),
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              name1,
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
        trailing: Text(time),
      ),
    );
  }
}
