import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange[200]),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(backgroundColor: Colors.amber),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello How are u?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 137, 6, 50),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  const Text('Trial 2'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            print('Hello');
                          },
                          child: const Text('Button')),
                      TextButton(
                          onPressed: () {}, child: const Text('Button2')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello How are u?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 137, 6, 50),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  const Text('Trial 2'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            print('Hello');
                          },
                          child: const Text('Button')),
                      TextButton(
                          onPressed: () {}, child: const Text('Button2')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
