import 'package:flutter/cupertino.dart';

class CustomInheritedWidget extends InheritedWidget {
  final String data;

  const CustomInheritedWidget({super.key, required super.child, required this.data});

  @override
  bool updateShouldNotify(CustomInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }

  static CustomInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CustomInheritedWidget>()!;
  }
}

class DataPropagation extends StatelessWidget {
  final String data;

  const DataPropagation({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return CustomInheritedWidget(
      data: data,
      child: const Intermediate()
    );
  }
}

class Intermediate extends StatelessWidget {
  const Intermediate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Child();
  }
}

class Child extends StatelessWidget {
  const Child({super.key});

  @override
  Widget build(BuildContext context) {
    final data = CustomInheritedWidget.of(context).data;
    return Text("Received data: $data");
  }
}