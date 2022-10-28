import 'package:flutter/material.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      Center(child: Text('CATIOROS')),
      Center(child: Text('GATINEOS')),
      Center(child: Text('PASSARINEOS')),
    ]);
  }
}
