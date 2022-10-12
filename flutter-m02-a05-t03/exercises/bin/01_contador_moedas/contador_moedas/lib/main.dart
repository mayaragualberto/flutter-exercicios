import 'package:flutter/material.dart';

void main() {
  runApp(const Coin());
}

class Coin extends StatefulWidget {
  const Coin({super.key});

  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int qtdMoedas = 0, qtdCoinCopper = 0, qtdCoinSilver = 0, qtdCoinGold = 0;

  void atualizarCont() {
    setState(() {
      qtdCoinCopper++;
      if (qtdCoinCopper >= 10) {
        qtdCoinSilver++;
        qtdCoinCopper = 0;
        if (qtdCoinSilver >= 10) {
          qtdCoinGold++;
          qtdCoinSilver = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          const SizedBox(
            height: 150.0,
            width: 50.0,
          ),
          Container(
            height: 30.0,
            width: 450.0,
            color: Colors.white,
            child: GestureDetector(
              onTap: atualizarCont,
              child: Text(
                'Copper: $qtdCoinCopper',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/coin-copper.png',
          ),
          const SizedBox(
            height: 50.0,
            width: 50.0,
          ),
          Container(
            height: 30.0,
            width: 450.0,
            color: Colors.white,
            child: GestureDetector(
              onTap: atualizarCont,
              child: Text(
                'Silver: $qtdCoinSilver',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/coin-silver.png',
          ),
          const SizedBox(
            height: 50.0,
            width: 50.0,
          ),
          Container(
            height: 30.0,
            width: 450.0,
            color: Colors.white,
            child: GestureDetector(
              onTap: atualizarCont,
              child: Text(
                'Gold: $qtdCoinGold',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/coin-gold.png',
          ),
        ],
      ),
    );
  }
}
