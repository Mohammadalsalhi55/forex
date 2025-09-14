import 'package:flutter/material.dart';
import 'package:forex/light/add_card.dart';
import 'package:forex/light/number_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/cardnumber': (context) => NumberCard(),
      },
      debugShowCheckedModeBanner: false,
      home: const AddingCard(),
    );
  }
}
