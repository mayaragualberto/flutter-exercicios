import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(100, 8, 254, 188),
          title: const Text(
            'Lista "Infinita"',
            style: TextStyle(
              color: Color.fromARGB(255, 14, 59, 16),
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  // debugPrint(index.toString());
                  return ItemContainer(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      color: const Color.fromARGB(255, 224, 224, 224),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
            size: 25,
          ),
          Text(
            'Item nº: $index',
            style: const TextStyle(
                fontSize: 24.0, color: Color.fromARGB(255, 26, 51, 27)),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
