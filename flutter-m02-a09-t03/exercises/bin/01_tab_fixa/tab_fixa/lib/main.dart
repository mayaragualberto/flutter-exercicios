import 'package:flutter/material.dart';
import 'package:tab_fixa/caioros_page.dart';
import 'package:tab_fixa/passarineos_page.dart';
import 'package:tab_fixa/gatineos_page.dart';
import 'package:tab_fixa/pet_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFixedTab(),
    );
  }
}

class MyFixedTab extends StatefulWidget {
  const MyFixedTab({Key? key}) : super(key: key);

  @override
  State<MyFixedTab> createState() => _MyFixedTabState();
}

class _MyFixedTabState extends State<MyFixedTab> {
  final pageController = PageController();
  int currentPage = 0;
  final tabs = const [
    Text('CATIOROS'),
    Text('GATINEOS'),
    Text('PASSARINEOS'),
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
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'logo.png',
            fit: BoxFit.fitHeight,
          ),
          backgroundColor: const Color.fromRGBO(121, 134, 203, 1),
          title: const Text(
            'Meu Pet: a loja do seu pet',
            style: TextStyle(color: Colors.white),
          ),
          bottom: currentPage == 0
              ? TabBar(
                  tabs: tabs,
                  labelPadding: const EdgeInsets.all(10.0),
                  indicatorColor: Colors.redAccent,
                  labelColor: Colors.white,
                  unselectedLabelColor:
                      const Color.fromARGB(255, 195, 189, 247),
                )
              : null,
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const [
            PetPage(),
            CatiorosPage(),
            GatineosPage(),
            PassarineosPage(),
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
