import 'package:flutter/material.dart';
import 'package:simplitude/Screen/mainmenu.dart';

import 'signup.dart';

// ignore: camel_case_types
class log extends StatelessWidget {
  const log({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final _useridController = TextEditingController();

  final _passwordController = TextEditingController();

  void _submitData() {
    final entereduserid = _useridController.text;
    final enteredpassword = _passwordController.text;
    if (entereduserid.isEmpty || enteredpassword.isEmpty) {
      return;
    }
  }

  void _showInfoMsg(String msg) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          textAlign: TextAlign.center,
          msg,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        behavior: SnackBarBehavior.floating,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))));
  }

  void check() {
    final entereduserid = _useridController.text;
    final enteredpassword = _passwordController.text;
    if (entereduserid == "Rahul" ||
        entereduserid == "rahul" && enteredpassword == "raka1") {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MainMenu(),
        ),
      );
    } else {
      _showInfoMsg('Incorrect!! Try adding different username and password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/last.jpg"),
                fit: BoxFit.cover,
                opacity: 0.7,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50.0)),*/
                      //child: Image.asset('asset/images/flutter-logo.png')),
                    ),
                  ),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    controller: _useridController,
                    onSubmitted: (_) => _submitData(),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        labelText: 'User ID',
                        hintText: 'Enter valid user id as abc'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _passwordController,
                    onSubmitted: (_) => _submitData(),
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      check();
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => const signUp()));
                    },
                    child: const Text(
                      'New user? Create Account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
