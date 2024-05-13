import 'package:flutter/material.dart';

class Styles extends StatelessWidget {
  const Styles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.blue,
        child: const Text('Hello, World!', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}