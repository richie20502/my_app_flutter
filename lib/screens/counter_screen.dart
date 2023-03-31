import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('nav counter')),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Número de clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CunstomWidgetFloat(),
    );
  }
}

class CunstomWidgetFloat extends StatelessWidget {
  const CunstomWidgetFloat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_minus_1_outlined),

          //onPressed: () => setState(() => (counter != 0) ? counter-- : 0),
        ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_outlined),
          //onPressed: () => setState(() => counter = 0),
        ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_plus_1_outlined),
          //onPressed: () => setState(() => counter++)
        ),
      ],
    );
  }
}
