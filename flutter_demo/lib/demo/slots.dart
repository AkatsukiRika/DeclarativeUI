import 'package:flutter/material.dart';

class Slots extends StatelessWidget {
  final Widget header;
  final Widget content;

  const Slots({super.key, required this.header, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(children: [header, content]);
  }
}