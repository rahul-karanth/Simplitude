import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @required
  final int resultScoreM;
  @required
  final int resultScoreV;
  @required
  final int resultScoreL;

  final VoidCallback resetHandler;

  const Result(this.resultScoreM, this.resultScoreV, this.resultScoreL,
      this.resetHandler,
      {super.key});

  String get resultPhrase {
    String resultText;
    final int resultScore = (resultScoreL + resultScoreM + resultScoreV);
    resultText = 'You have scored $resultScore/35\n';
    return resultText;
  }

  String get perM {
    return (resultScoreM / 15 * 100).toStringAsPrecision(4);
  }

  String get perL {
    return (resultScoreL / 10 * 100).toStringAsPrecision(4);
  }

  String get perV {
    return (resultScoreV / 10 * 100).toStringAsPrecision(4);
  }

  String get resultPhraseM {
    String resultText;

    if (resultScoreM <= 5) {
      resultText =
          ' Your quiz score is below average. Keep practicing and reviewing the concepts to improve your performance';
    } else if (resultScoreM <= 10) {
      resultText =
          ' Your quiz score is average. Focus on areas where you struggled and continue practicing to enhance your performance.';
    } else {
      resultText =
          ' Congratulations! Your quiz score is above average. Maintain your momentum and aim for even better results in future quizzes.';
    }
    return resultText;
  }

  String get resultPhraseL {
    String resultText;

    //resultText = 'Logical:\n';
    if (resultScoreL <= 3) {
      resultText =
          ' Stay persistent! Your current score doesn\'t define your potential. Keep pushing forward and you\'ll witness significant improvements in no time.';
    } else if (resultScoreL <= 7) {
      resultText =
          ' You\'re making progress! Stay focused and continue your efforts to bridge the gap between your current score and outstanding performance.';
    } else {
      resultText =
          ' Congratulations on your impressive score! You have demonstrated outstanding aptitude. Maintain this momentum, and the sky\'s the limit for your achievements.';
    }
    return resultText;
  }

  String get resultPhraseV {
    String resultText;

    //resultText = 'Logical:\n';
    if (resultScoreL <= 3) {
      resultText =
          ' You\'re capable of so much more! Use this quiz as a learning opportunity and let it ignite your determination to excel in future quizzes.';
    } else if (resultScoreL <= 7) {
      resultText =
          ' Keep up the good work!But still not yet to perfection. With each quiz, you\'re strengthening your skills. Stay dedicated, and soon you\'ll achieve remarkable results.';
    } else {
      resultText =
          ' You\'re acing it! Your exceptional quiz score reflects your strong aptitude. Keep up the fantastic work and inspire others with your remarkable achievements.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Mathematical Reasoning: $perM%',
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhraseM,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Quicksand',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Logical Reasoning: $perL%',
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhraseL,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Quicksand',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Verbal Ability: $perV%',
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhraseV,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Quicksand',
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 68, 36, 25),
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                )),
            onPressed: resetHandler,
            child: const Text(
              'Restart Quiz!',
            ),
          ),
        ],
      ),
    );
  }
}
