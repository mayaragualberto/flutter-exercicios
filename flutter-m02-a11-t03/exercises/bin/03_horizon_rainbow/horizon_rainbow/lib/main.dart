import 'package:flutter/material.dart';

void main() {
  runApp(const Rainbow());
}

class Rainbow extends StatefulWidget {
  const Rainbow({super.key});

  @override
  State<Rainbow> createState() => _RainbowState();
}

class _RainbowState extends State<Rainbow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 253, 65, 126),
          toolbarHeight: 60,
          elevation: 2,
          title: const Text('VLAVAAV Horizontal'),
          centerTitle: true,
        ),
        body: SizedBox(
          child: GridView(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 780,
              childAspectRatio: 0.2,
              mainAxisExtent: 50,
            ),
            children: const <Widget>[
              // Construir as listas do arco-íris
              CriarListra(colorListra: Colors.red, titulo: 'Vermelho'),
              CriarListra(colorListra: Colors.orange, titulo: 'Laranja'),
              CriarListra(colorListra: Colors.yellow, titulo: 'Amarelo'),
              CriarListra(colorListra: Colors.green, titulo: 'Verde'),
              CriarListra(colorListra: Colors.blue, titulo: 'Azul'),
              CriarListra(colorListra: Colors.indigo, titulo: 'Anil'),
              CriarListra(colorListra: Colors.purple, titulo: 'Violeta'),
              // Construir as listas do arco-íris
              CriarListra(colorListra: Colors.red, titulo: 'Vermelho'),
              CriarListra(colorListra: Colors.orange, titulo: 'Laranja'),
              CriarListra(colorListra: Colors.yellow, titulo: 'Amarelo'),
              CriarListra(colorListra: Colors.green, titulo: 'Verde'),
              CriarListra(colorListra: Colors.blue, titulo: 'Azul'),
              CriarListra(colorListra: Colors.indigo, titulo: 'Anil'),
              CriarListra(colorListra: Colors.purple, titulo: 'Violeta'),
              // Construir as listas do arco-íris
              CriarListra(colorListra: Colors.red, titulo: 'Vermelho'),
              CriarListra(colorListra: Colors.orange, titulo: 'Laranja'),
              CriarListra(colorListra: Colors.yellow, titulo: 'Amarelo'),
              CriarListra(colorListra: Colors.green, titulo: 'Verde'),
              CriarListra(colorListra: Colors.blue, titulo: 'Azul'),
              CriarListra(colorListra: Colors.indigo, titulo: 'Anil'),
              CriarListra(colorListra: Colors.purple, titulo: 'Violeta'),
              // Construir as listas do arco-íris
              CriarListra(colorListra: Colors.red, titulo: 'Vermelho'),
              CriarListra(colorListra: Colors.orange, titulo: 'Laranja'),
              CriarListra(colorListra: Colors.yellow, titulo: 'Amarelo'),
              CriarListra(colorListra: Colors.green, titulo: 'Verde'),
              CriarListra(colorListra: Colors.blue, titulo: 'Azul'),
              CriarListra(colorListra: Colors.indigo, titulo: 'Anil'),
              CriarListra(colorListra: Colors.purple, titulo: 'Violeta'),
            ],
          ),
        ),
      ),
    );
  }
}

class CriarListra extends StatelessWidget {
  final Color colorListra;
  final String titulo;
  const CriarListra({
    super.key,
    this.colorListra = Colors.white,
    this.titulo = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: colorListra,
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
            textAlign: TextAlign.center),
      ),
    );
  }
}
