import 'package:flutter/material.dart';

class S4532 extends StatelessWidget {
  const S4532({super.key});
  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        CustomText(text: 'App Akademie'),
        CustomText(
            text: 'App Akademie',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            )),
        CustomText(
            text: 'App Akademie',
            style: TextStyle(
              fontSize: 10,
              fontStyle: FontStyle.italic,
              color: Colors.green,
            )),
      ],
    );
  }
}

// TODO move CustomText to file
class CustomText extends StatelessWidget {
  // Parameters
  final String text;
  final TextStyle? style;

  const CustomText({
    super.key,
    this.style,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
