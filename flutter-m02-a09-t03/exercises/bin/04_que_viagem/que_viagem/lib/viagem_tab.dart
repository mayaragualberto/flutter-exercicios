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
                  "Pontos Tur??sticos de Salvador",
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
                  "O Pelourinho, popularmente chamado de Pel??, ?? um bairro da cidade de Salvador, no Brasil. Localiza-se no Centro Hist??rico da cidade, na ??rea que abrange apenas as ruas que v??o do Terreiro de Jesus at?? o Largo do Pelourinho, o qual possui um conjunto arquitet??nico colonial barroco brasileiro preservado e integrante do Patrim??nio Hist??rico da Organiza????o das Na????es Unidas para a Educa????o, a Ci??ncia e a Cultura.",
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
                  "A praia do Porto da Barra est?? situada no bairro da Barra, banhada pela Ba??a de Todos os Santos. Localiza-se no bairro da Barra; limita-se ao sul pela encosta que ?? formada pela Ladeira da Barra, passando pelo Hospital Espanhol indo at?? o Farol da Barra, passando pela fortaleza de Santa Maria. Esta praia possui uma pequena extens??o de areia e ?? bastante frequentada aos fins de semana e feriados, possuindo uma pequena enseada de ondas calmas e ??gua de temperatura agrad??vel, bastante prop??cio ao banho de mar.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Farol de Itapu??",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Image.asset('images/itapua.jpg'),
                const Text(
                  textAlign: TextAlign.justify,
                  "O farol de Itapu?? ou farol da Ponta de Itapu?? ?? um farol em Salvador, na Bahia, no Brasil. Se situa na praia de Itapu??, no subdistrito de Itapu??, a cerca de 23 quil??metros (14 mi) a ??s-nordeste do farol de Barra. Trata-se de uma torre tronc??nica em ferro fundido com 21 metros (69 p??), assente sobre uma base de concreto e ligada ?? praia por uma ponte tamb??m de concreto. O farol est?? pintado com barras horizontais brancas e vermelhas.",
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
