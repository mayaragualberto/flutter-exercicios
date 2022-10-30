import 'package:flutter/material.dart';
import 'package:tab_scroll/tab_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabScroll(),
    );
  }
}

class TabScroll extends StatefulWidget {
  const TabScroll({Key? key}) : super(key: key);

  @override
  State<TabScroll> createState() => _TabScrollState();
}

class _TabScrollState extends State<TabScroll> {
  final pageController = PageController();
  int currentPage = 0;
  final tabs = const [
    Text(
      'Tab 1',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 2',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 3',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 4',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 5',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 6',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 7',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 8',
      style: TextStyle(fontSize: 18),
    ),
    Text(
      'Tab 9',
      style: TextStyle(fontSize: 18),
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
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 23, 57, 228),
          title: const Text(
            'Tab Scroll',
            style: TextStyle(color: Colors.white),
          ),
          bottom: currentPage == 0
              ? TabBar(
                  isScrollable: true,
                  tabs: tabs,
                  labelPadding: const EdgeInsets.all(10.0),
                  indicatorColor: Colors.yellow,
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
            TabPage(),
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
