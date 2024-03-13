import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao()); //inicia nossa aplicação

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), // tela inicial é a homePage
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold serve para criar a tela
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          //Coluna principal do projeto
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // é o eixo vertical do alinhamento
          crossAxisAlignment: CrossAxisAlignment.start,
          // é o eixo horizontal do alinhamento
          children: [
            Text("Atividade"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nome: Sophia de Almeida"),
                Text("Email: sophia.almeida3@etec.sp.gov.br"),
                Text("Idade: 18 Anos"),
              ],
            ),
            Center(
              child: Text("13/03/2024"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("2H3"),
                Text("2024"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
