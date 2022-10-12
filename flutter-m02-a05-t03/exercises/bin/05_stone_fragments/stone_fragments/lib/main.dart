import 'package:flutter/material.dart';

void main() {
  runApp(const Stone());
}

class Stone extends StatefulWidget {
  const Stone({super.key});

  @override
  State<Stone> createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  int qtdFragments = 00, qtdPieces = 00, qtdStones = 0;
  String img = "https://i.imgur.com/jTqNa7D.png";

  void updateFragments() {
    setState(() {
      qtdFragments++;
      if (qtdFragments >= 10) {
        qtdPieces++;
        qtdFragments = 0;
        if (qtdStones < 1) {
          img = 'https://i.imgur.com/IR5Sn6X.png';
        }
        if (qtdPieces >= 10) {
          qtdStones++;
          qtdPieces = 0;
          img = 'https://i.imgur.com/JAeGRb1.png';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.imgur.com/etWX9CB.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              // color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: updateFragments,
                    child: Text(
                      'Tap to earn fragments\n\nFragments: $qtdFragments',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: updateFragments,
                    child: Text(
                      'Pieces: $qtdPieces',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: updateFragments,
                    child: Text(
                      'Stones: $qtdStones',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.network(
              img,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
