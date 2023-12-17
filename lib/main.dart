// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_learn_project/pages/calculator_page.dart';
import 'package:flutter_learn_project/pages/currency_converter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyCalculator(),
      routes: {
        '/firstpage': (context) => const MyCalculator(),
        '/currencyconverterpage': (context) => const CurrencyConverter(),
      },
    );
  }
}
