import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 144, 17, 57),
          toolbarHeight: 80,
          elevation: 2,
          title: const Text('ErBienBi - Hospedagens'),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(255, 246, 249, 246),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Selecione as datas da sua reserva',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(5),
                crossAxisCount: 7,
                childAspectRatio: 1.2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: const <Widget>[
                  CriarTitulo(data: 'D'),
                  CriarTitulo(data: 'S'),
                  CriarTitulo(data: 'T'),
                  CriarTitulo(data: 'Q'),
                  CriarTitulo(data: 'Q'),
                  CriarTitulo(data: 'S'),
                  CriarTitulo(data: 'S'),
                  CriarCard(data: '1'),
                  CriarCard(data: '2'),
                  CriarCard(data: '3'),
                  CriarCard(data: '4'),
                  CriarCard(data: '5'),
                  CriarCard(data: '6'),
                  CriarCard(data: '7'),
                  CriarCard(data: '8'),
                  CriarCard(data: '9'),
                  CriarCard(data: '10'),
                  CriarCard(data: '11'),
                  CriarCard(data: '12'),
                  CriarCard(data: '13'),
                  CriarCard(data: '14'),
                  CriarCard(data: '15'),
                  CriarCard(data: '16'),
                  CriarCard(data: '17'),
                  CriarCard(data: '18'),
                  CriarCard(data: '19'),
                  CriarCard(data: '20'),
                  CriarCard(data: '21'),
                  CriarCard(data: '22'),
                  CriarCard(data: '23'),
                  CriarCard(data: '24'),
                  CriarCard(data: '25'),
                  CriarCard(data: '26'),
                  CriarCard(data: '27'),
                  CriarCard(data: '28'),
                  CriarCard(data: '29'),
                  CriarCard(data: '30'),
                  CriarCard(data: '31'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Maio 2022',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CriarTitulo extends StatefulWidget {
  final String data;
  const CriarTitulo({
    super.key,
    this.data = '',
  });

  @override
  State<CriarTitulo> createState() => _CriarTituloState();
}

class _CriarTituloState extends State<CriarTitulo> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 229, 223, 223),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.data,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.pink),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class CriarCard extends StatefulWidget {
  final String data;
  const CriarCard({
    super.key,
    this.data = '',
  });

  @override
  State<CriarCard> createState() => _CriarCardState();
}

class _CriarCardState extends State<CriarCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 212, 85, 82)
                : const Color.fromARGB(255, 229, 223, 223),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.data,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: isSelected
                      ? const Color.fromARGB(255, 229, 223, 223)
                      : const Color.fromARGB(255, 212, 85, 82),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
