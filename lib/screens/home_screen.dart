import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('esta')),
          elevation: 0.0,
        ),
        body: const Center(
            child: Column(
          children: [
            Text('Hola mundo'),
            Text('Hola mundo'),
          ],
        )));
  }
}
