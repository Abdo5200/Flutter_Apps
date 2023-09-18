// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:audioplayers/audioplayers.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playMusic(int num) {
    final player = AudioPlayer();
    player.play(AssetSource("music-$num.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    Expanded button(int num, String song_name, Color paint) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 1.0, top: 1),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              playMusic(num);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                Icon(
                  Icons.music_note,
                  color: paint,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  song_name,
                  style: TextStyle(
                    color: paint,
                    fontSize: 20,
                  ),
                ),
              ]),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            "Ringtones",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button(1, "Samsung Galaxy", Colors.orange),
            button(2, "Samsung Note", Colors.red),
            button(3, "Nokia", Colors.lightBlue),
            button(4, "iPhone 11", Colors.purple),
            button(5, "Whatsapp", Colors.indigo),
            button(6, "Samsung S7", Colors.blue),
            button(7, "iPhone 6", Colors.black)
          ],
        ),
      ),
    );
  }
}
