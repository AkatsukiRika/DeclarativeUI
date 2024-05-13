import 'package:flutter/cupertino.dart';

class ComponentCreation extends StatelessWidget {
  const ComponentCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Please select a type from the navigation bar to see effects.'),
    );
  }
}