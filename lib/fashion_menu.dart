import 'package:flutter/material.dart';

class fashion_menu extends StatefulWidget {
  const fashion_menu({super.key});
  @override
  State<fashion_menu> createState() => _fashion_menuState();
}

class _fashion_menuState extends State<fashion_menu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.brown,
          child: const Text('hello'),
        ),
        Container(
          width: 500,
          height: 500,
          color: Colors.green,
          child: const Text('hello'),
        ),
        Container(
          width: 500,
          height: 500,
          color: Colors.yellow,
          child: const Text('hello'),
        ),
      ],
    );
  }
}
