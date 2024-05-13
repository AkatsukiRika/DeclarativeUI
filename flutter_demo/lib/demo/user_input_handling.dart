import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInputHandling extends StatefulWidget {
  const UserInputHandling({super.key});

  @override
  State<StatefulWidget> createState() => _UserInputHandlingState();
}

class _UserInputHandlingState extends State<UserInputHandling> {
  late final _controller = TextEditingController(text: "");

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        decoration: const InputDecoration(labelText: 'Enter text'),
      ),
    );
  }
}