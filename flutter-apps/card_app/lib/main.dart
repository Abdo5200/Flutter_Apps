import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/abdo.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Abdelrahman Mamdouh",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                ),
              ),
              Text(
                "Flutter devoloper",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 300,
                height: 20,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 35,
                    color: Colors.white,
                  ),
                  title: Text(
                    "+201024937840",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 35,
                    color: Colors.white,
                  ),
                  title: Text(
                    "abdelrahman12@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Cairo",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Personal Information",
            style: TextStyle(
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
