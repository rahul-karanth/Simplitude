import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 5,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            questionText,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 56, 33, 24),
            ),
            //textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
