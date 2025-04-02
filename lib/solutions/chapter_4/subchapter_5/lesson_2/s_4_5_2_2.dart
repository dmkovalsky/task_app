import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});
  @override
  Widget build(BuildContext context) {
    return MyStateLessWidget();
  }
}

class MyStateLessWidget extends StatelessWidget {
  const MyStateLessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Hello Dmitry'),
        ElevatedButton(onPressed: null, child: Text('Klick mich'))
      ],
    );
  }
}
