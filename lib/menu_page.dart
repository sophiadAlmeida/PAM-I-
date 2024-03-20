import 'dart:math';

import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Color.fromARGB(255, 255, 77, 190),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Número Aleatório"),
            Text("${Random().nextInt(100)}"),
          ],
        ),
      ),
    );
  }
}
