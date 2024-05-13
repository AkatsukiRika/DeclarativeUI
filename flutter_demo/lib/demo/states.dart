import 'package:flutter/cupertino.dart';

class States extends StatefulWidget {
  const States({super.key});

  @override
  State<StatefulWidget> createState() => _StatesState();
}

class _StatesState extends State<States> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () => setState(() => count += 1),
      child: Text("Count: $count"),
    );
  }
}