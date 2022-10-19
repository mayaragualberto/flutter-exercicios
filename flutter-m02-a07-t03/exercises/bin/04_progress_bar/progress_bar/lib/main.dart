import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressBar(),
    );
  }
}

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double progress = 0.0;
  String texto = 'Clique para iniciar upload';
  Color cor = Colors.orange;
  void progressBar() {
    setState(
      () {
        progress += Random().nextDouble();
        texto = '${(progress * 100).toStringAsFixed(2)}%';
        if (progress >= 1) {
          texto = 'Upload completo!';
          cor = Colors.green;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício Progress Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ElevatedButton.icon(
                onPressed: progressBar,
                icon: const Icon(Icons.upload), //icon data for elevated button
                label: const Text("Upload"), //label text
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Text(
                texto,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                child: LinearProgressIndicator(
                  minHeight: 15.0,
                  backgroundColor: Colors.yellow,
                  value: progress,
                  color: cor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
