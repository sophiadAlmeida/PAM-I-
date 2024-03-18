import 'dart:ui';

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
        title: const Text("Tentando Sozinha :("),
        backgroundColor: Colors.cyanAccent,
      ),
      //corpo do app
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //texto centralizado no começo
        children: [
          Center(
            child: Text(
              "Login",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          //os dois TextField centralizados com a largura de 400
          const Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Nome:",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Senha:",
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Botão
          Center(
            child: SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Entrar"),
              ),
            ),
          ),
          const Center(
            child: SizedBox(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("ESQUECI A SENHA"),
                  Text("CADASTRO"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
