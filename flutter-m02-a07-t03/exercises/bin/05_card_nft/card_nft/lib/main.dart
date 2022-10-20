import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardNFT(),
    );
  }
}

class CardNFT extends StatefulWidget {
  const CardNFT({super.key});

  @override
  State<CardNFT> createState() => _CardNFTState();
}

class _CardNFTState extends State<CardNFT> {
  Color azulClaro = const Color.fromARGB(255, 0, 217, 255);
  Color azulEscuro = const Color.fromARGB(255, 32, 104, 117);
  String texto = 'Clique para iniciar upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff14253d),
      appBar: AppBar(
        title: const Text('Exercício Card NFT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // const Padding(padding: EdgeInsets.all(10.0)),
          Card(
            color: Colors.transparent,
            elevation: 5.0,
            margin: const EdgeInsets.all(30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'nft.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              'Equilibrium #3429',
              textAlign: TextAlign.left,
              style: TextStyle(color: azulClaro, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10.0),
            child: Text(
              'Nossa coleção Equilibrium promove calma e balanço',
              textAlign: TextAlign.left,
              style: TextStyle(color: azulEscuro, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0.047 ETH',
                  style: TextStyle(color: azulClaro, fontSize: 20),
                ),
                const SizedBox(
                  width: 200,
                ),
                Icon(Icons.punch_clock, color: azulClaro),
                Text(
                  'restam 3 dias',
                  style: TextStyle(color: azulClaro, fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            color: azulEscuro, //color of divider
            height: 5, //height spacing of divider
            thickness: 1, //thickness of divier line
            indent: 30, //spacing at the start of divider
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      ('https://yt3.ggpht.com/ytc/AMLnZu_0NIIGm0_zbEVjZLeK1ygXRylgTm7nmETnvoxTdgQ=s900-c-k-c0x00ffffff-no-rj')),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Criado por',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: azulClaro, fontSize: 20),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Mayara Gualberto',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
