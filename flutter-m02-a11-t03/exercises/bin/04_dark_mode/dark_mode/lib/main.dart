import 'package:flutter/material.dart';
import 'package:dark_mode/theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isSwitched ? DarkMode.dark : DarkMode.light,
      darkTheme: DarkMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                isSwitched
                    ? DarkMode.dark.hoverColor
                    : DarkMode.light.hoverColor,
                isSwitched
                    ? DarkMode.dark.shadowColor
                    : DarkMode.light.shadowColor,
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 80,
                    color: isSwitched
                        ? DarkMode.dark.primaryColor
                        : DarkMode.light.primaryColor,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "SWEET HOME",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: isSwitched
                              ? DarkMode.dark.primaryColor
                              : DarkMode.light.primaryColor,
                        ),
                      ),
                      Text(
                        "O que gostaria de monitorar?",
                        style: TextStyle(
                          fontSize: 16,
                          color: isSwitched
                              ? DarkMode.dark.primaryColor
                              : DarkMode.light.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(30),
                crossAxisCount: 2,
                childAspectRatio: 1.35,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: <Widget>[
                  CriarCard(
                      titulo: 'luzes',
                      icone: Icons.lightbulb_outline,
                      temaAtual: isSwitched ? DarkMode.dark : DarkMode.light),
                  CriarCard(
                      titulo: 'temperatura',
                      icone: Icons.device_thermostat,
                      temaAtual: isSwitched ? DarkMode.dark : DarkMode.light),
                  CriarCard(
                      titulo: 'lavadora',
                      icone: Icons.water,
                      temaAtual: isSwitched ? DarkMode.dark : DarkMode.light),
                  CriarCard(
                      titulo: 'segurança',
                      icone: Icons.security,
                      temaAtual: isSwitched ? DarkMode.dark : DarkMode.light),
                  CriarCard(
                      titulo: 'wifi',
                      icone: Icons.wifi_rounded,
                      temaAtual: isSwitched ? DarkMode.dark : DarkMode.light),
                  CriarCard(
                      titulo: 'televisor',
                      icone: Icons.tv,
                      temaAtual: isSwitched ? DarkMode.dark : DarkMode.light),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(isSwitched ? 'Light Mode' : 'Dark Mode',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color:
                      isSwitched ? Colors.white : DarkMode.light.primaryColor,
                )),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: const Color.fromARGB(255, 24, 69, 104),
              activeColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class CriarCard extends StatefulWidget {
  final String titulo;
  final IconData? icone;
  final ThemeData? temaAtual;
  const CriarCard({
    super.key,
    this.titulo = '',
    this.icone,
    this.temaAtual,
  });

  @override
  State<CriarCard> createState() => _CriarCardState();
}

class _CriarCardState extends State<CriarCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).splashColor
                : Theme.of(context).unselectedWidgetColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(widget.icone,
                  size: 60, color: Theme.of(context).primaryColor),
              Text(
                widget.titulo,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      );
    });
  }
}
