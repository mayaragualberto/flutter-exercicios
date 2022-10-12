import 'package:flutter/material.dart';

void main() {
  runApp(const Alinhamento());
}

class Alinhamento extends StatelessWidget {
  const Alinhamento({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.green,
              height: 200.0,
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.yellow,
              height: 200.0,
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.red,
              height: 200.0,
              width: 200.0,
            ),
          ),
        ],
      ),
    );
  }
}
