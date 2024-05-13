import 'package:flutter/cupertino.dart';

class ConditionalRender extends StatelessWidget {
  final bool condition;

  const ConditionalRender({super.key, required this.condition});

  @override
  Widget build(BuildContext context) {
    final text = condition ? 'This component is rendered with condition "true".' : 'This component is rendered with condition "false".';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text),
    );
  }
}