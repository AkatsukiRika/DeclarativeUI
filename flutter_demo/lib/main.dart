import 'package:flutter/material.dart';

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
