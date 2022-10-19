import 'package:flutter/material.dart';
import 'package:appbar_icon/theme.dart';

void main() {
  runApp(const MyApp());
}

const appName = 'Coffee';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remover tag de debug
      debugShowCheckedModeBanner: false,
      // Remover grid de debug
      debugShowMaterialGrid: false,
      // Seleção do tema atual
      themeMode: ThemeMode.light,
      // Configurando o tema de acordo com os parâmetros de theme.dart
      theme: AppBarDataTheme.light,
      darkTheme: AppBarDataTheme.dark,
      home: const AppBarData(),
    );
  }
}

class AppBarData extends StatelessWidget {
  const AppBarData({super.key});

  @override
  Widget build(BuildContext context) {
    // mudar tema de acordo com configuração do celular
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        leading: const Icon(
          Icons.coffee,
          color: Colors.brown,
        ),
        title: const Text(appName, style: TextStyle(color: Colors.brown)),
      ),
    );
  }
}
