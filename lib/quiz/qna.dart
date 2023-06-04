import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

//void main() => runApp(qna());

class Qna extends StatefulWidget {
  const Qna({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Qna();
  }
}

class _Qna extends State<Qna> {
  final _questions = const [
    {
      'questionText':
          'Pointing to a man on the stage, Rita said, He is the brother of the daughter of the wife of my husband. How is the man on the stage related to Rita?  ',
      'category': 'l',
      'answers': [
        {'text': 'Son', 'score': 1},
        {'text': 'Husband', 'score': 0},
        {'text': 'Cousin', 'score': 0},
        {'text': 'Nephew', 'score': 0},
        {'text': 'Brother-in-law', 'score': 0},
      ],
    },
    {
      'questionText':
          'How many natural numbers are there between 23 and 100 which are exactly divisible by 6 ?',
      'category': 'm',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '11', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '13', 'score': 1},
      ],
    },
    {
      'questionText': 'The king ______ rebel.',
      'category': 'v',
      'answers': [
        {'text': 'excused', 'score': 0},
        {'text': 'forgave', 'score': 0},
        {'text': 'pardoned', 'score': 1},
        {'text': 'none of these', 'score': 0},
      ],
    },
    {
      'questionText':
          'The average weight of 8 persons increases by 2.5 kg when a new person comes in place of one of them weighing 65 kg. What might be the weight of the new person?',
      'category': 'm',
      'answers': [
        {'text': '85kg', 'score': 1},
        {'text': '76.5', 'score': 0},
        {'text': '60', 'score': 0},
        {'text': 'Data inadequate', 'score': 0},
      ],
    },
    {
      'questionText':
          'Rahul told to Prabhakar,Yesterday I defeated the only brother of the daughter of my grandmother. Whom did Rahul defeat?',
      'category': 'l',
      'answers': [
        {'text': 'Son', 'score': 0},
        {'text': 'Father', 'score': 1},
        {'text': 'Brother', 'score': 0},
        {'text': 'Father-in-law', 'score': 0},
      ],
    },
    {
      'questionText':
          'Pick out the most effective word to fill the blank \n "Fate smiles -----those who untiringly grapple with stark realities of life."',
      'category': 'v',
      'answers': [
        {'text': 'with', 'score': 0},
        {'text': 'over', 'score': 0},
        {'text': 'round', 'score': 0},
        {'text': 'on', 'score': 1},
      ],
    },
    {
      'questionText':
          ' From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?',
      'category': 'm',
      'answers': [
        {'text': '564', 'score': 0},
        {'text': '645', 'score': 0},
        {'text': '735', 'score': 0},
        {'text': '756', 'score': 1},
      ],
    },
    {
      'questionText':
          'A clock is set right at 8 am. The clock gains 10 minute in 24 hours. What will be the right time when the clock indicates 1 pm on the following day?        ',
      'category': 'l',
      'answers': [
        {'text': '11.40 pm', 'score': 0},
        {'text': '10 pm', 'score': 0},
        {'text': '12.48 pm', 'score': 1},
        {'text': '12pm', 'score': 0},
      ],
    },
    {
      'questionText': 'If log 27 = 1.431, then the value of log 9 is:',
      'category': 'm',
      'answers': [
        {'text': '0,934', 'score': 0},
        {'text': '0.945', 'score': 0},
        {'text': '0.954', 'score': 1},
        {'text': '0.958', 'score': 0},
      ],
    },
    {
      'questionText':
          'Reena took a loan of Rs. 1200 with simple interest for as many years as the rate of interest. If she paid Rs. 432 as interest at the end of the loan period, what was the rate of interest?',
      'category': 'm',
      'answers': [
        {'text': '3.6', 'score': 0},
        {'text': '18', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '6', 'score': 1},
      ],
    },
    {
      'questionText': 'On what dates of April, 2001 did Friday fall?    ',
      'category': 'l',
      'answers': [
        {'text': '5th,12th, 19th, 26th April', 'score': 0},
        {'text': '4th,11th,18th, 25th April ', 'score': 1},
        {'text': '3rd, 10th, 17th, 24th April  ', 'score': 0},
        {'text': 'None of these', 'score': 0},
      ],
    },
    {
      'questionText':
          'The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:',
      'category': 'm',
      'answers': [
        {'text': '276', 'score': 0},
        {'text': '299', 'score': 0},
        {'text': '322', 'score': 1},
        {'text': '435', 'score': 0},
      ],
    },
    {
      'questionText':
          'Choose the correct meaning of proverb/idiom \n "To catch a tartar"  ',
      'category': 'v',
      'answers': [
        {'text': 'To catch a dangerous person', 'score': 1},
        {'text': 'To meet with disaster', 'score': 0},
        {'text': 'To trap wanted criminal with great difficulty', 'score': 0},
        {'text': 'None of these', 'score': 0},
      ],
    },
    {
      'questionText':
          'In how many different ways can the letters of the word LEADING be arranged in such a way that the vowels always come together?',
      'category': 'm',
      'answers': [
        {'text': '360', 'score': 0},
        {'text': '480', 'score': 0},
        {'text': '720', 'score': 1},
        {'text': '5040', 'score': 0},
      ],
    },
    {
      'questionText':
          'Raju walks 12km towards South. From there he walks 8km towards North. Then, he walks 3 km towards West. How far is he with reference to his starting point?   ',
      'category': 'l',
      'answers': [
        {'text': '7km', 'score': 0},
        {'text': '6km', 'score': 0},
        {'text': '8km', 'score': 0},
        {'text': '5km', 'score': 1},
      ],
    },
    {
      'questionText':
          'How many terms are there in the G.P. 3, 6, 12, 24, ... , 384 ?',
      'category': 'm',
      'answers': [
        {'text': '8', 'score': 1},
        {'text': '9', 'score': 0},
        {'text': '10', 'score': 0},
        {'text': '11', 'score': 0},
      ],
    },
    {
      'questionText':
          'The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:',
      'category': 'm',
      'answers': [
        {'text': '15', 'score': 0},
        {'text': '16', 'score': 1},
        {'text': '18', 'score': 0},
        {'text': '25', 'score': 0},
      ],
    },
    {
      'questionText':
          'If in a code language, WOULD is written as VNTKC and MARGIN is written as LZQFHM, how will HOLDING be written in that code?      ',
      'category': 'l',
      'answers': [
        {'text': ' CHFINTK ', 'score': 0},
        {'text': 'INTCHMF', 'score': 0},
        {'text': 'GNKCHMF ', 'score': 1},
        {'text': 'NIKHCMF ', 'score': 0},
      ],
    },
    {
      'questionText': 'Ornithologist : Bird :: Archaeologist : ?',
      'category': 'v',
      'answers': [
        {'text': 'Islands', 'score': 0},
        {'text': 'Mediators', 'score': 0},
        {'text': 'Archaeology', 'score': 1},
        {'text': 'Aquatic', 'score': 0},
      ],
    },
    {
      'questionText': 'Drama : Scene : : Book : ?    ',
      'category': 'v',
      'answers': [
        {'text': 'Story', 'score': 0},
        {'text': 'Chapter', 'score': 1},
        {'text': 'Page', 'score': 0},
        {'text': 'Author', 'score': 0},
      ],
    },
    {
      'questionText':
          'The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:',
      'category': 'm',
      'answers': [
        {'text': '200m', 'score': 0},
        {'text': '225m', 'score': 0},
        {'text': '245m', 'score': 1},
        {'text': '250m', 'score': 0},
      ],
    },
    {
      'questionText':
          'No women teacher can play. Some women teachers are athletes. \n Conclusions:Male athletes can play\n.Some athletes can play\n.',
      'category': 'l',
      'answers': [
        {'text': ' Only conclusion I follows', 'score': 0},
        {'text': 'Both I and II follow', 'score': 1},
        {'text': 'Only conclusion II follows', 'score': 0},
        {'text': 'Either I or II follows', 'score': 0},
      ],
    },
    {
      'questionText':
          'Choose the word which is different from the rest.\n(a) Cap\n(b) Turban\n(c) Helmet\n(d) Veil\n(e) Hat\n',
      'category': 'v',
      'answers': [
        {'text': 'a', 'score': 0},
        {'text': 'b', 'score': 0},
        {'text': 'c', 'score': 0},
        {'text': 'd', 'score': 1},
      ],
    },
    {
      'questionText':
          'What will be the ratio of simple interest earned by certain amount at the same rate of interest for 6 years and that for 9 years?',
      'category': 'm',
      'answers': [
        {'text': '1:3', 'score': 0},
        {'text': '1:4', 'score': 0},
        {'text': '2:3', 'score': 1},
        {'text': '1:5', 'score': 0},
      ],
    },
    {
      'questionText': 'Synonym of EMBEZZLE',
      'category': 'v',
      'answers': [
        {'text': 'Misappropriate', 'score': 1},
        {'text': ' Balance', 'score': 0},
        {'text': 'Remunerate', 'score': 0},
        {'text': 'Clear', 'score': 0},
      ],
    },
    {
      'questionText':
          'Blueberries cost more than strawberries.\nBlueberries cost less than raspberries.\nRaspberries cost more than strawberries and blueberries.\nIf the first two statements are true, the third statement is',
      'category': 'l',
      'answers': [
        {'text': 'true', 'score': 1},
        {'text': 'false', 'score': 0},
        {'text': 'uncertain', 'score': 0},
        {'text': 'limited data', 'score': 0},
      ],
    },
    {
      'questionText':
          'A alone can do a piece of work in 6 days and B alone in 8 days. A and B undertook to do it for Rs. 3200. With the help of C, they completed the work in 3 days. How much is to be paid to C?',
      'category': 'm',
      'answers': [
        {'text': 'Rs.375', 'score': 0},
        {'text': 'Rs.400', 'score': 1},
        {'text': 'Rs.600', 'score': 0},
        {'text': 'Rs.800', 'score': 0},
      ],
    },
    {
      'questionText':
          'A boat can travel with a speed of 13 km/hr in still water. If the speed of the stream is 4 km/hr, find the time taken by the boat to go 68 km downstream.',
      'category': 'm',
      'answers': [
        {'text': '2 hours', 'score': 0},
        {'text': '3 hours', 'score': 0},
        {'text': '5 hours', 'score': 0},
        {'text': '4 hours', 'score': 1},
      ],
    },
    {
      'questionText':
          'Find the angle between minute hand and hour hand at 6:30 am.  ',
      'category': 'l',
      'answers': [
        {'text': '25 degree', 'score': 0},
        {'text': '22.5 degree', 'score': 0},
        {'text': '15 degree', 'score': 1},
        {'text': ' None of these', 'score': 0},
      ],
    },
    {
      'questionText':
          'In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs?',
      'category': 'm',
      'answers': [
        {'text': '6.5', 'score': 0},
        {'text': '6.25', 'score': 1},
        {'text': '6.75', 'score': 0},
        {'text': '7', 'score': 0},
      ],
    },
    {
      'questionText':
          'Substitute one word for a given sentence.              Extreme old age when a man behaves like a fool',
      'category': 'v',
      'answers': [
        {'text': 'Imbecility', 'score': 0},
        {'text': 'Senility', 'score': 0},
        {'text': 'Superannuation', 'score': 1},
        {'text': 'Dotage', 'score': 0},
      ],
    },
    {
      'questionText':
          'A fruit seller had some apples. He sells 40% apples and still has 420 apples. Originally, he had:',
      'category': 'm',
      'answers': [
        {'text': '588 apples', 'score': 0},
        {'text': '600 apples', 'score': 0},
        {'text': '672 apples', 'score': 0},
        {'text': '700 apples', 'score': 1},
      ],
    },
    {
      'questionText': 'Active to passive: Darjeeling grows tea.',
      'category': 'v',
      'answers': [
        {'text': ' Tea is being grown in Darjeeling.', 'score': 0},
        {'text': 'Tea is grown in Darjeeling.', 'score': 1},
        {'text': 'Let the tea be grown in Darjeeling.', 'score': 0},
        {'text': 'Tea grows in Darjeeling.', 'score': 0},
      ],
    },
    {
      'questionText': '121, 12321, 123321, 12345321, 12345654321    ',
      'category': 'l',
      'answers': [
        {'text': '12321', 'score': 0},
        {'text': ' 123321 ', 'score': 0},
        {'text': '12345321', 'score': 0},
        {'text': '12345654321', 'score': 1},
      ],
    },
    {
      'questionText': 'Genuine : Authentic : : Mirage : ?  ',
      'category': 'v',
      'answers': [
        {'text': 'Illusion', 'score': 1},
        {'text': ' Image', 'score': 0},
        {'text': 'Reflection', 'score': 0},
        {'text': 'Transpiration', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _scoreM = 0;
  var _scoreV = 0;
  var _scoreL = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _scoreL = 0;
      _scoreV = 0;
      _scoreM = 0;
    });
  }

  void _answerQuestion(int score, String cat) {
    // var aBool = true;
    // aBool = false;
    if (cat == 'm') _scoreM = score + _scoreM;
    if (cat == 'l') _scoreL = score + _scoreL;
    if (cat == 'v') _scoreV = score + _scoreV;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 50, 30, 23),
          title: const Text('Quiz',
              style: TextStyle(
                color: Colors.amberAccent,
              )),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/q.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
              ),
            ),
            _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_scoreM, _scoreV, _scoreL, _resetQuiz),
          ],
        ),
      ),
    );
  }
}
