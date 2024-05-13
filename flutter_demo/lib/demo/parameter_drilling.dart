import 'package:flutter/cupertino.dart';

class ParameterDrilling extends StatelessWidget {
  final int data;

  const ParameterDrilling({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('This component received data of: $data'),
    );
  }
}