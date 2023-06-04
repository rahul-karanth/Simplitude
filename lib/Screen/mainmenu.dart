import 'package:flutter/material.dart';
import 'package:simplitude/Videos/videos.dart';
import 'package:simplitude/tips/tips.dart';
import '../quiz/qna.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Simplitude',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/b.jpg"),
              fit: BoxFit.cover,
              opacity: 0.7,
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const Qna(),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 4, 49, 85),
                elevation: 400,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 87),
                  child: Text(
                    'QUIZ',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.pink,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Tips(),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 4, 49, 85),
                elevation: 400,
                child: Center(
                  child: Text(
                    'Tips and tricks',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.pink,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Videos(),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 4, 49, 85),
                elevation: 400,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 87),
                  child: Text(
                    'Videos',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.pink,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
