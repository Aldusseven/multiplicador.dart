import 'package:flutter/material.dart';
import 'package:multiplicador_app/screens/multiply_screen.dart';

void main() {
  runApp(const MultiplicadorApp());
}

class MultiplicadorApp extends StatelessWidget {
  const MultiplicadorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiplyScreen(),
    );
  }
}