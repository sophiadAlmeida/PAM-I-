import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  //cabeçalho do app
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Número 1:",
                ),
              ),
            ),
            const Text("+"),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Número 2:",
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  textStyle: const TextStyle(
                    color: Colors.cyan,
                    //foreground: TextPainter,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {},
                child: const Text("SOMA"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
