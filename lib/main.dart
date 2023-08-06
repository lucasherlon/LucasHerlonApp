import 'package:flutter/material.dart';
import 'package:lucasherlonapp/pages/portfolio.dart';
import 'package:lucasherlonapp/pages/technologies.dart';
import './pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lucas Herlon App',
      home: Home()
    );
  }
}
