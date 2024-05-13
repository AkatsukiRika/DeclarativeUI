import 'package:flutter/material.dart';

class Person {
  final String name;
  final int age;
  final String id;

  Person({required this.name, required this.age, required this.id});
}

class ListAndLooping extends StatelessWidget {
  final List<Person> items;

  const ListAndLooping({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final person = items[index];
        return ListTile(
          key: Key(person.id),
          title: Text('Name: ${person.name}, Age: ${person.age}'),
        );
      },
    );
  }
}