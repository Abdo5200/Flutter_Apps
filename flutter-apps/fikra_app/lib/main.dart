import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("فكرة"),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
          child: Image(
              image: AssetImage("images/portrait_of_a_lady_1937.1.37.jpg"))),
    ),
  ));
}
