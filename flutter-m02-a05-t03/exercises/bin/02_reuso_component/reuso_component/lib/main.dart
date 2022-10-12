import 'package:flutter/material.dart';

void main() {
  runApp(const MyComponent());
}

class MyComponent extends StatelessWidget {
  const MyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: const [
        ColorirContainer(
            largura: 300.0, altura: 120.0, cor: Colors.grey, titulo: 'Box 1'),
        ColorirContainer(
            largura: 200.0,
            altura: 200.0,
            cor: Colors.pinkAccent,
            titulo: 'Box 2'),
        ColorirContainer(
            largura: 100.0,
            altura: 100.0,
            cor: Colors.redAccent,
            titulo: 'Box 3'),
      ],
    ));
  }
}

class ColorirContainer extends StatelessWidget {
  final Color cor;
  final double largura;
  final double altura;
  final String titulo;

  const ColorirContainer(
      {Key? key,
      this.largura = 0,
      this.altura = 0,
      this.cor = Colors.white,
      this.titulo = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      color: cor,
      alignment: Alignment.center,
      child: Text(titulo,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              decoration: TextDecoration.none)),
    );
  }
}
