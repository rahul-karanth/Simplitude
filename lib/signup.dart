// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'log.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _useridController = TextEditingController();

  final _passwordController = TextEditingController();

  void _submitData() {
    final entereduserid = _useridController.text;
    final enteredpassword = _passwordController.text;
    if (entereduserid.isEmpty || enteredpassword.isEmpty) {
      return;
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
                const Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email ID',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _useridController,
                    onSubmitted: (_) => _submitData(),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
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
                const SizedBox(height: 50),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const LoginDemo()));
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
