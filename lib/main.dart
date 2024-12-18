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
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            // title: Text('Multiple Text Widgets'),
            ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      decoration: const BoxDecoration(color: Colors.brown),
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
                    const Text('Email Address'),
                    const SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    const TextField(
                        decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(color: Colors.black),
                      filled: false,
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
                          width: 25,
                          style: BorderStyle.none,
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
                        color: Colors.black,
                      ),
                    ),
                    PasswordField(),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'LOGIN TO MY ACCOUNT',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObscured,
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        filled: false,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            // style: BorderStyle.solid,
            // strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            style: BorderStyle.none,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(
              () {
                _isObscured = !_isObscured;
              },
            );
          },
        ),
      ),
    );
  }
}
