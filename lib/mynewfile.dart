import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
    @override
    Widget build(BuildContext context) {
      return const Column(
        children: [
          Column(
            children: [
              Row(children: [
                Text('Add To cart'),
                Text('Buy Now'),
                Text(''),
              ],)
            ],
          ),

          Column(children: [Text('Add to cart')]),
          Column(children: [Text('Add to cart')]),
        ],
      );
    }
}
