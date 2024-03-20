import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Color.fromARGB(255, 205, 54, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Seja Bem Vindo!"),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/menu"),
              child: const Text("Entar!"),
            ),
          ],
        ),
      ),
    );
  }
}