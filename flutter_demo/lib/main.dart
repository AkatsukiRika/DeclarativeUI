import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/component_creation.dart';
import 'package:flutter_demo/demo/conditional_render.dart';
import 'package:flutter_demo/demo/data_propagation.dart';
import 'package:flutter_demo/demo/event_handling.dart';
import 'package:flutter_demo/demo/list_and_looping.dart';
import 'package:flutter_demo/demo/parameter_drilling.dart';
import 'package:flutter_demo/demo/side_effects.dart';
import 'package:flutter_demo/demo/slots.dart';
import 'package:flutter_demo/demo/states.dart';
import 'package:flutter_demo/demo/styles.dart';
import 'package:flutter_demo/demo/user_input_handling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget? component;
    if (selectIndex == 0) {
      component = const ComponentCreation();
    }
    if (selectIndex == 1) {
      component = const ConditionalRender(condition: false);
    }
    if (selectIndex == 2) {
      component = const ParameterDrilling(data: 114514);
    }
    if (selectIndex == 3) {
      component = const EventHandling();
    }
    if (selectIndex == 4) {
      component = const UserInputHandling();
    }
    if (selectIndex == 5) {
      component = ListAndLooping(items: [
        Person(name: 'John', age: 30, id: '1'),
        Person(name: 'Jane', age: 28, id: '2'),
        Person(name: 'Bob', age: 25, id: '3'),
      ]);
    }
    if (selectIndex == 6) {
      component = const Slots(
        header: Text('Header', style: TextStyle(fontSize: 24)),
        content: Text('Child Content')
      );
    }
    if (selectIndex == 7) {
      component = const Styles();
    }
    if (selectIndex == 8) {
      component = const States();
    }
    if (selectIndex == 9) {
      component = const DataPropagation(data: 'provided data from main.dart');
    }
    if (selectIndex == 10) {
      component = const SideEffects();
    }

    Widget? component2;
    if (selectIndex == 1) {
      component2 = const ConditionalRender(condition: true);
    }
    if (selectIndex == 2) {
      component2 = const ParameterDrilling(data: 1919810);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _chipsRow(),
            component ?? const Spacer(),
            component2 ?? const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _chipsRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: [
          _chipsRowItem(text: 'Component Creation', isSelect: selectIndex == 0, onPressed: () {
            setState(() {
              selectIndex = 0;
            });
          }),

          _chipsRowItem(text: 'Conditional Render', isSelect: selectIndex == 1, onPressed: () {
            setState(() {
              selectIndex = 1;
            });
          }),

          _chipsRowItem(text: 'Parameter Drilling', isSelect: selectIndex == 2, onPressed: () {
            setState(() {
              selectIndex = 2;
            });
          }),

          _chipsRowItem(text: 'Event Handling', isSelect: selectIndex == 3, onPressed: () {
            setState(() {
              selectIndex = 3;
            });
          }),

          _chipsRowItem(text: 'User Input Handling', isSelect: selectIndex == 4, onPressed: () {
            setState(() {
              selectIndex = 4;
            });
          }),

          _chipsRowItem(text: 'Lists & Looping', isSelect: selectIndex == 5, onPressed: () {
            setState(() {
              selectIndex = 5;
            });
          }),

          _chipsRowItem(text: 'Slots', isSelect: selectIndex == 6, onPressed: () {
            setState(() {
              selectIndex = 6;
            });
          }),

          _chipsRowItem(text: 'Styles', isSelect: selectIndex == 7, onPressed: () {
            setState(() {
              selectIndex = 7;
            });
          }),

          _chipsRowItem(text: 'States', isSelect: selectIndex == 8, onPressed: () {
            setState(() {
              selectIndex = 8;
            });
          }),

          _chipsRowItem(text: 'Scoped Data Propagation', isSelect: selectIndex == 9, onPressed: () {
            setState(() {
              selectIndex = 9;
            });
          }),

          _chipsRowItem(text: 'Side Effects', isSelect: selectIndex == 10, onPressed: () {
            setState(() {
              selectIndex = 10;
            });
          }),
        ],
      ),
    );
  }

  Widget _chipsRowItem({VoidCallback? onPressed, required String text, bool isSelect = false}) {
    final style = isSelect ? ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
    ) : const ButtonStyle();
    final textStyle = isSelect ? const TextStyle(color: Colors.white) : const TextStyle();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
