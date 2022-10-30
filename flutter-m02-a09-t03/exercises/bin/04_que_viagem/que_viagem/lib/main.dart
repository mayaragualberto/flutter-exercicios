import 'package:flutter/material.dart';
import 'package:que_viagem/viagem_tab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViagemList(),
    );
  }
}

class ViagemList extends StatefulWidget {
  const ViagemList({Key? key}) : super(key: key);

  @override
  State<ViagemList> createState() => _ViagemListState();
}

class _ViagemListState extends State<ViagemList> {
  final pageController = PageController();
  int currentPage = 0;
  final tabs = const [
    Tab(
      icon: Icon(Icons.flight),
      text: "VOOS",
    ),
    Tab(
      icon: Icon(Icons.shopping_bag),
      text: "PASSEIOS",
    ),
    Tab(
      icon: Icon(Icons.explore),
      text: "MAPA",
    ),
  ];

  void onItemPressed(int index) {
    pageController.jumpToPage(index);
    setState(() {
      currentPage = index;
    });
  }

  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color azulEscuro = Color.fromARGB(255, 0, 86, 156);
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow,
          title: const Text(
            'Que Viagem! Turismo',
            style: TextStyle(fontSize: 24, color: azulEscuro),
          ),
          bottom: currentPage == 0
              ? TabBar(
                  tabs: tabs,
                  labelPadding: const EdgeInsets.all(2.0),
                  indicatorColor: azulEscuro,
                  labelColor: azulEscuro,
                )
              : null,
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const [
            ViagemTab(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
