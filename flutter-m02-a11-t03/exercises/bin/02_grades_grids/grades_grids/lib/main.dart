import 'package:flutter/material.dart';

void main() {
  runApp(const GradesGrid());
}

class GradesGrid extends StatefulWidget {
  const GradesGrid({super.key});

  @override
  State<GradesGrid> createState() => _GradesGridState();
}

class _GradesGridState extends State<GradesGrid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 73, 176, 77),
          toolbarHeight: 110,
          elevation: 1,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CriarTriangulo(),
                SizedBox(
                  width: 40,
                ),
                CriarTriangulo(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  IconData(0xf2ff, fontFamily: 'MaterialIcons'),
                  color: Colors.black,
                  size: 60,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  color: Colors.black,
                  size: 55,
                ),
                Icon(
                  IconData(0xf2ff, fontFamily: 'MaterialIcons'),
                  color: Colors.black,
                  size: 60,
                ),
              ],
            ),
            Container(
              color: Colors.red,
              margin: const EdgeInsets.all(30),
              height: 250,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(30),
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                crossAxisCount: 6,
                childAspectRatio: 0.55,
                children: const <Widget>[
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                  CriarDente(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Color.fromARGB(255, 101, 58, 180),
          child: SizedBox(
            height: 140,
            child: Text(''),
          ),
        ),
      ),
    );
  }
}

class CriarDente extends StatelessWidget {
  const CriarDente({super.key});

  @override
  Widget build(BuildContext context) {
    const Color dentes = Color.fromARGB(255, 255, 239, 192);

    return Container(
      height: .5,
      color: dentes,
    );
  }
}

class CriarTriangulo extends StatelessWidget {
  const CriarTriangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: CustomPaint(
            size: const Size(50, 80),
            painter: PaintTriangle(
                backgroundColor: const Color.fromARGB(255, 61, 81, 179)),
          ),
        ),
      ],
    );
  }
}

class PaintTriangle extends CustomPainter {
  final Color backgroundColor;

  PaintTriangle({
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final y = size.height;
    final x = size.width;

    final paint = Paint()..color = backgroundColor;
    final path = Path();

    path
      ..moveTo(0, y)
      ..lineTo((x / 2), (y / 1.5))
      ..lineTo(x, y);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
