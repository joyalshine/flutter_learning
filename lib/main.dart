// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.orange[200]),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[200],
//       appBar: AppBar(backgroundColor: Colors.amber),
//       body: SafeArea(
//           child: Column(
//         children: [
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   color: Colors.orange,
//                   border: Border.all()),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Hello How are u?",
//                     style: TextStyle(
//                         color: Color.fromARGB(255, 137, 6, 50),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25),
//                     textAlign: TextAlign.center,
//                   ),
//                   const Text('Trial 2'),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                           onPressed: () {
//                             print('Hello');
//                           },
//                           child: const Text('Button')),
//                       TextButton(
//                           onPressed: () {}, child: const Text('Button2')),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.red,
//               width: double.infinity,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Hello How are u?",
//                     style: TextStyle(
//                         color: Color.fromARGB(255, 137, 6, 50),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25),
//                     textAlign: TextAlign.center,
//                   ),
//                   const Text('Trial 2'),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                           onPressed: () {
//                             print('Hello');
//                           },
//                           child: const Text('Button')),
//                       TextButton(
//                           onPressed: () {}, child: const Text('Button2')),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String displayText = 'Data Display';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue[100],
                child: Column(
                  children: [
                    TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Type Something'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            displayText = _textController.text;
                          });
                        },
                        child: const Text('Submit')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.cyan,
                child: Center(
                    child: Text(
                  displayText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
