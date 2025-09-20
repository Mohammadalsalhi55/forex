import 'package:flutter/material.dart';
import 'package:forex/componenet/setting_page.dart';
import 'package:forex/pages/auth/add_card.dart';
import 'package:forex/pages/auth/number_card.dart';
import 'package:forex/pages/auth/successfully_added.dart';
import 'package:forex/pages/auth/verify_card.dart';
import 'package:forex/pages/welcome%20and%20pin%20setup/pin_setup.dart';
import 'package:forex/pages/welcome%20and%20pin%20setup/welcome_screen.dart';
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
        '/addingcard': (context) => const AddingCard(),
        '/pinsetup': (context) => const PinSetup(),
        '/cardnumber': (context) => const NumberCard(),
        '/verifycard': (context) => const VerifyCard(),
        '/successfullyadded': (context) => const SuccessfullyAdded(),
        '/settingpage': (context) => const SettingPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const WelcomeScreen(),
    );
  }
}
