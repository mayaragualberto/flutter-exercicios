import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Center(child: Image.asset('images/golden.jpg')),
      Center(child: Image.asset('images/dachshund.jpg')),
      Center(child: Image.asset('images/bulldog.jpg')),
      Center(child: Image.asset('images/pug.jpg')),
      Center(child: Image.asset('images/spaniel.jpg')),
      Center(child: Image.asset('images/husky.jpg')),
      Center(child: Image.asset('images/border-collie.jpg')),
      Center(child: Image.asset('images/beagle.jpg')),
      Center(child: Image.asset('images/weimaraner.jpg')),
      Center(child: Image.asset('images/dalmata.jpg')),
    ]);
  }
}
