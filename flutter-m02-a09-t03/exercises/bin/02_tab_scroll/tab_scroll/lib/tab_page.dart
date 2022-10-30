import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      Center(child: Text('Tab 1')),
      Center(child: Text('Tab 2')),
      Center(child: Text('Tab 3')),
      Center(child: Text('Tab 4')),
      Center(child: Text('Tab 5')),
      Center(child: Text('Tab 6')),
      Center(child: Text('Tab 7')),
      Center(child: Text('Tab 8')),
      Center(child: Text('Tab 9')),
    ]);
  }
}
