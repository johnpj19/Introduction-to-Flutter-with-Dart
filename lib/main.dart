import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  String message = '';

  void login() {

  if (usernameController.text.isEmpty ||
      passwordController.text.isEmpty) {

    setState(() {
      message = 'Fields Required';
    });

    return;
  }

  if (usernameController.text == 'john' &&
      passwordController.text == 'password123') {

    setState(() {
      message = 'Login Successful';
    });

  } else {

    setState(() {
      message = 'Login Failed';
    });

  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              key: const Key('username'),
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),

            TextField(
              key: const Key('password'),
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              key: const Key('loginButton'),
              onPressed: login,
              child: const Text('Login'),
            ),

            const SizedBox(height: 20),

            Text(
              message,
              key: const Key('resultMessage'),
            ),
          ],
        ),
      ),
    );
  }
}