// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Card(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4, 0.7],
        )),
        child: Center(
          child:
              Text("Flutter Gradiente", style: TextStyle(color: Colors.white)),
        ),
      ),
    ));
  }
}
