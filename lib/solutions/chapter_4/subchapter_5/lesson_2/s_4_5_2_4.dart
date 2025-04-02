import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = '';
  String buttonValue = 'Name anzeigen';
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(name),
        ElevatedButton(
            onPressed: () {
              isChanged = !isChanged;
              setState(() {
                if (isChanged == true) {
                  name = 'Dmitry';
                  buttonValue = 'Name verstecken';
                } else {
                  name = '';
                  buttonValue = 'Name anzeigen';
                }
              });
            },
            child: Text(buttonValue))
      ],
    );
  }
}
