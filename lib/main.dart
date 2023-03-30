import 'package:flutter/material.dart';
import 'package:my_app_flutter/screens/counter_screen.dart';
//import 'package:my_app_flutter/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomeScreen(),
        home: CounterScreen());
  }
}
