import 'package:flutter/material.dart';

int countVowels(String input) {
  int result = 0;

  for (int i = 0; i < input.length; i++) {
    switch (input[i].toLowerCase()) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
      case 'ä':
      case 'ü':
      case 'ö':
        result++;
      default:
      //result = result + 0; unnötig eigentlich
    }
  }

  // Lösung hier einfügen
  return result;
}

class S3384 extends StatefulWidget {
  const S3384({super.key});

  @override
  State<S3384> createState() => _S3384State();
}

class _S3384State extends State<S3384> {
  final TextEditingController _inputController = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _inputController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Text',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input = _inputController.text;
            setState(() {
              output = countVowels(input).toString();
            });
          },
          child: const Text('Zähle Vokale'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
