import 'package:flutter/material.dart';
import 'class_tris.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TRIS',
      theme: ThemeData.dark(),
      home: const TrisWG(),
    );
  }
}

class TrisWG extends StatefulWidget {
  const TrisWG({super.key});

  @override
  State<TrisWG> createState() => _TrisWGState();
}

class _TrisWGState extends State<TrisWG> {
  String infoLine = 'Inizia la X ';
  Tris gioco = Tris();

  void premi(List<int> x) {
    if (gioco.continua) {
      setState(() {
        infoLine = gioco.ctrGiocata(x);
      });
    }
  }

  void dacapo() {
    setState(() {
      gioco.rigioco();
      infoLine = 'Inizia la X ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: dacapo,
        child: const Icon(Icons.replay),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: Container(
              color: Colors.grey[800],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 280.0,
                    height: 55.0,
                    color: Colors.blue[700],
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          infoLine,
                          textScaleFactor: 2,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80.0,
                        height: 80.0,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([0, 0]),
                            child: Text(gioco.c[0][0], textScaleFactor: 4)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80,
                        height: 80,
                        color: Colors.brown,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([0, 1]),
                            child: Text(gioco.c[0][1], textScaleFactor: 4)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80.0,
                        height: 80.0,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([0, 2]),
                            child: Text(gioco.c[0][2], textScaleFactor: 4)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80.0,
                        height: 80.0,
                        color: Colors.purple,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([1, 0]),
                            child: Text(gioco.c[1][0], textScaleFactor: 4)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80,
                        height: 80,
                        color: Colors.green[800],
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([1, 1]),
                            child: Text(gioco.c[1][1], textScaleFactor: 4)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80.0,
                        height: 80.0,
                        color: Colors.purple,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([1, 2]),
                            child: Text(gioco.c[1][2], textScaleFactor: 4)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80.0,
                        height: 80.0,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([2, 0]),
                            child: Text(gioco.c[2][0], textScaleFactor: 4)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80,
                        height: 80,
                        color: Colors.brown,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([2, 1]),
                            child: Text(gioco.c[2][1], textScaleFactor: 4)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80.0,
                        height: 80.0,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () => premi([2, 2]),
                            child: Text(gioco.c[2][2], textScaleFactor: 4)),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 280.0,
                    height: 55.0,
                    color: Colors.blue[700],
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('X\n${gioco.wx}'),
                        Text('P\n${gioco.p}'),
                        Text('O\n${gioco.wo}'),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
