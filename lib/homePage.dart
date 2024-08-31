import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Home",
            style: TextStyle(fontSize: 40, fontFamily: "written", fontWeight: FontWeight.bold,/* fontStyle: FontStyle.italic*/),
          ),
          /*Image.network(
            'hon b7ett l src mnl net',
            height: 200,
            width: 300,
            fit: BoxFit
                .cover /*cover bt2arreb soura la t3abbi l height wl width fiyya tkun . fill bt8yyel l echelle tb3et lsura*/,
          //),*/
          Image.asset(
            "images/believe.jpg",
            width: 500,
            height: 200,
          )
        ],
      ),
    );
  }
}
