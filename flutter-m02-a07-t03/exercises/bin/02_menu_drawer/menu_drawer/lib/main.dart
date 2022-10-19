import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuDrawer(),
    );
  }
}

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () => {},
        // ),
        iconTheme: const IconThemeData(color: Color(0xfffce4ec)),
        title: const Text(
          'Menu Drawer',
          style: TextStyle(color: Color(0xfffce4ec)),
        ),
      ),
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        backgroundColor: const Color(0xfffce4ec),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.only(top: 50),
          children: [
            ListTile(
              leading: const Icon(
                Icons.flash_on,
                color: Colors.blue,
                size: 40,
              ),
              title: const Text('Flutter'),
              subtitle: const Text('Tudo são Widgets'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.mood,
                color: Colors.red,
                size: 40,
              ),
              title: const Text('Dart'),
              subtitle: const Text('É muito forte'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 40,
              ),
              title: const Text('Cafessíneo'),
              subtitle: const Text('Quero caféééé'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
