import 'package:flutter/material.dart';


// o método main é onde toda aplicacao baseda em dart começa
void main() => runApp(const Aplicacao());

//classe aplicacao, resposavel por gerenciar todo o nosso app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp é responsavel por gerenciar e estabelecer padrões
    //para todas as telas do app. Nele temos:
    //configuração de telas
    //estilos a serem aplicados na tela (via tema)
    //toda estrutura de tela baseada na Material (material.io)
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 42, 246, 236))),
      home: const HomePage(),
    );
  }
}

// class que represneta a tela do aplicativo com todo seu layout
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Resumo do pedido",
                style: TextTheme.headlineLarge,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("1x"),
                ),
                const Expanded(child: Text("Banana")),
                const Text("2,80"),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("2x"),
                ),
                const Expanded(child: Text("Morango")),
                const Text("8,90"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
