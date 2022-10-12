import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Card(
        color: Colors.pinkAccent,
        child: Center(
          child: Text("OK", style: TextStyle(fontSize: 32)),
        ),
      ),
    ),
  );
}
