import 'package:flutter/cupertino.dart';

class EventHandling extends StatefulWidget {
  const EventHandling({super.key});

  @override
  State<StatefulWidget> createState() => _EventHandlingState();
}

class _EventHandlingState extends State<EventHandling> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () => setState(() => isClicked = true),
      child: Text(isClicked ? "Button clicked" : "Click me"),
    );
  }
}