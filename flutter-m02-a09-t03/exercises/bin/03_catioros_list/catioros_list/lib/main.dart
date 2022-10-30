import 'package:flutter/material.dart';
import 'package:catioros_list/catioros_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatiorosList(),
    );
  }
}

class CatiorosList extends StatefulWidget {
  const CatiorosList({Key? key}) : super(key: key);

  @override
  State<CatiorosList> createState() => _CatiorosListState();
}

class _CatiorosListState extends State<CatiorosList> {
  final pageController = PageController();
  int currentPage = 0;
  final tabs = const [
    Text('Dachshund'),
    Text('Golden'),
    Text('Bulldog'),
    Text('Pug'),
    Text('Spaniel'),
    Text('Husky'),
    Text('Border Collie'),
    Text('Beagle'),
    Text('Weimaraner'),
    Text('Dalmata'),
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
          backgroundColor: Color.fromARGB(255, 77, 87, 136),
          title: const Text(
            'Catioros',
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
