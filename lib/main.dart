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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nome: Sophia"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meu filme preferido é:"),
              Center(
                child: Text("Como eu era antes de você"),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Minha comida preferida é:"),
              Center(
                child: Text("Lasanha e Filé de frango empanado"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("2H3"),
              Text("Matão"),
              Text("2024"),
            ],
          ),
        ],
      ),
    );
  }
}
