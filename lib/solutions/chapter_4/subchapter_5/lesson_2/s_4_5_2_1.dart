import 'package:flutter/material.dart';

class S4521 extends StatelessWidget {
  const S4521({super.key});
  @override
  Widget build(BuildContext context) {
    return HelloWorldCentered();
  }
}

class HelloWorldCentered extends StatelessWidget {
  const HelloWorldCentered({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text('Hello World'));
  }
}
