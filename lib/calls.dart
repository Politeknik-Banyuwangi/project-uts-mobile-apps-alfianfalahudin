import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
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
            callCard(
              "alfian",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "082576987456",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "tono",
              Icons.call_missed,
              Colors.red,
              "Mei 31, 07:00",
            ),
            callCard(
              "tini",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "087456325456",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "budi",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "anton",
              Icons.call_missed,
              Colors.red,
              "Mei 31, 07:00",
            ),
            callCard(
              "aku 1",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "rama",
              Icons.call_made,
              Colors.green,
              "Mei 31, 07:00",
            ),
            callCard(
              "08796547896",
              Icons.call_missed,
              Colors.red,
              "Mei 31, 07:00",
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget callCard(
      String name, IconData iconData, Color iconColor, String time) {
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
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              time,
              style: TextStyle(fontSize: 12.8),
            )
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
