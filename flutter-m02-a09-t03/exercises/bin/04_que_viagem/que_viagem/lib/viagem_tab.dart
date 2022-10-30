import 'package:flutter/material.dart';

class ViagemTab extends StatefulWidget {
  const ViagemTab({super.key});

  @override
  State<ViagemTab> createState() => _ViagemTabState();
}

class _ViagemTabState extends State<ViagemTab> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "PARTIDA",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Outubro 31, 2022",
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      "SDU",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Santos Dumont, Brazil",
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                const RotationTransition(
                  turns: AlwaysStoppedAnimation(90 / 360),
                  child: Icon(
                    Icons.flight,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text(
                      "SSA",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Salvador, Brazil",
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pontos Turísticos de Salvador",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Pelourinho",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Image.asset('images/pelourinho.jpg'),
                const Text(
                  textAlign: TextAlign.justify,
                  "O Pelourinho, popularmente chamado de Pelô, é um bairro da cidade de Salvador, no Brasil. Localiza-se no Centro Histórico da cidade, na área que abrange apenas as ruas que vão do Terreiro de Jesus até o Largo do Pelourinho, o qual possui um conjunto arquitetônico colonial barroco brasileiro preservado e integrante do Patrimônio Histórico da Organização das Nações Unidas para a Educação, a Ciência e a Cultura.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Porto da Barra",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Image.asset('images/barra.jpg'),
                const Text(
                  textAlign: TextAlign.justify,
                  "A praia do Porto da Barra está situada no bairro da Barra, banhada pela Baía de Todos os Santos. Localiza-se no bairro da Barra; limita-se ao sul pela encosta que é formada pela Ladeira da Barra, passando pelo Hospital Espanhol indo até o Farol da Barra, passando pela fortaleza de Santa Maria. Esta praia possui uma pequena extensão de areia e é bastante frequentada aos fins de semana e feriados, possuindo uma pequena enseada de ondas calmas e água de temperatura agradável, bastante propício ao banho de mar.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Farol de Itapuã",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Image.asset('images/itapua.jpg'),
                const Text(
                  textAlign: TextAlign.justify,
                  "O farol de Itapuã ou farol da Ponta de Itapuã é um farol em Salvador, na Bahia, no Brasil. Se situa na praia de Itapuã, no subdistrito de Itapuã, a cerca de 23 quilômetros (14 mi) a és-nordeste do farol de Barra. Trata-se de uma torre troncónica em ferro fundido com 21 metros (69 pé), assente sobre uma base de concreto e ligada à praia por uma ponte também de concreto. O farol está pintado com barras horizontais brancas e vermelhas.",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset('images/mapa.png'),
          ],
        ),
      ],
    );
  }
}
