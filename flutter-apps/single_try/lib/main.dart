// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Beta Version",
            style: TextStyle(
              fontFamily: "Oswald",
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            backgroundImage:
                AssetImage("images/portrait_of_a_lady_1937.1.37.jpg"),
            radius: 60,
          ),
          Text(
            "Anna LeonHeart",
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontFamily: "Oswald",
            ),
          ),
          Text(
            "Princess",
            style: TextStyle(
              fontFamily: "Oswald",
              fontSize: 24,
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 200,
            child: Text("_______________________________"),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(22, 20, 22, 0),
            color: Colors.green,
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                "+123456789",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
              margin: EdgeInsets.all(22),
              color: Colors.green,
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.white, size: 35),
                title: Text(
                  "annaleon99@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ))
        ]),
      ),
    );
  }
}
