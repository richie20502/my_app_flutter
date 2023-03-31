import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  void incred() {
    counter++;
    setState(() {});
  }

  void decred() {
    if (counter != 0) {
      counter--;
      setState(() {});
    }
  }

  void initiad() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CunstomWidgetFloat(
          incredFuntion: incred,
          decredFunction: decred,
          initiadFunction: initiad),
    );
  }
}

class CunstomWidgetFloat extends StatelessWidget {
  final Function incredFuntion;
  final Function decredFunction;
  final Function initiadFunction;
  const CunstomWidgetFloat({
    super.key,
    required this.incredFuntion,
    required this.decredFunction,
    required this.initiadFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decredFunction(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
        FloatingActionButton(
          onPressed: () => initiadFunction(),
          child: const Icon(Icons.exposure_outlined),
        ),
        FloatingActionButton(
          onPressed: () => incredFuntion(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
      ],
    );
  }
}
