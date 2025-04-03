import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({super.key});
  @override
  Widget build(BuildContext context) {
    return MyMosaikWidget();
  }
}

class MyMosaikWidget extends StatelessWidget {
  const MyMosaikWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RowColorBox(color: Colors.red),
          RowColorBox(color: Colors.green)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RowColorBox(color: Colors.blue),
          RowColorBox(color: Colors.yellow),
        ],
      )
    ]);
  }
}

// TODO - move to file, if necessary can make new class for row for nice code :)
class RowColorBox extends StatelessWidget {
  // Attributes
  final Color color;

  const RowColorBox({
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
