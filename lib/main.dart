import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            // title: Text('Multiple Text Widgets'),
            ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    16.0,
                  ),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Text(
                    'PAMS',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                ),
                const Text(
                  '''Pipeline Activation
Management System 
(PAMS)
            ''',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text('Email Address'),
                const TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  // focusColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                )
                    //  focusedBorder:border
                    ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                  height: 40,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('LOGIN TO MY ACCOUNT'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
