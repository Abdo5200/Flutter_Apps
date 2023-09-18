import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        appBar: AppBar(
          title: Text(
            "Matching Photos",
            style: TextStyle(
              fontFamily: "Ubuntu",
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: ImagePage(),
      ),
    );
  }
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNum = 1;
  int rightImageNum = 9;
  void randomNum() {
    leftImageNum = Random().nextInt(9) + 1;
    rightImageNum = Random().nextInt(9) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNum == rightImageNum ? "Congratulations" : "Try again",
          style: TextStyle(
            fontSize: 35,
            color: Colors.indigo,
            fontFamily: "Ubuntu",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      randomNum();
                    });
                  },
                  child: Image.asset("images/image-$leftImageNum.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      randomNum();
                    });
                  },
                  child: Image.asset("images/image-$rightImageNum.png"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
