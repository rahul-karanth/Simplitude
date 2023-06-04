import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 265,
      //mainAxisAlignment: MainAxisAlignment.start,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amberAccent,
          alignment: Alignment.centerLeft, // <-- had to set alignment
          padding: EdgeInsets.zero,
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              answerText,
              style: const TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 51, 31, 24)),
            )),
      ),
    );
  }
}
