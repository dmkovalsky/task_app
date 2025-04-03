import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});
  @override
  Widget build(BuildContext context) {
    return MyContainerWidget();
  }
}

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 10, children: [
      ColorBox(color: Colors.blueGrey),
      ColorBox(color: Colors.blue),
      ColorBox(color: Colors.cyan),
    ]);
  }
}

// TODO - move to colorbox.dart file to optimize
class ColorBox extends StatelessWidget {
  final Color color;

  const ColorBox({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
