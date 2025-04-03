import 'package:flutter/material.dart';

class S4534 extends StatelessWidget {
  const S4534({super.key});
  @override
  Widget build(BuildContext context) {
    return MyRowWidget();
  }
}

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // spacing: 64, thats would be better choice :)
      children: [
        Text('App'),
        SizedBox(
          width: 64,
        ),
        Text('Akademie'),
      ],
    );
  }
}
