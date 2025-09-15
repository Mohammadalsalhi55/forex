import 'package:flutter/material.dart';
import 'package:forex/pages/add_card.dart';
import 'package:forex/pages/number_card.dart';
import 'package:forex/pages/successfully_added.dart';
import 'package:forex/pages/verify_card.dart';
import 'package:forex/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/cardnumber': (context) => const NumberCard(),
        '/verifycard': (context) => const VerifyCard(),
        '/successfullyadded': (context) => const SuccessfullyAdded(),
      },
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const AddingCard(),
    );
  }
}
