// 1_ Create State
// 2_ Init State  => Instantiate load think / no context /
// 3_ Didchange dependency => have context /
// 4_ Build => if call setstate , call back Build
// 5_ Didupdate widget => a paw ka variable twe changes phit tar so lar paw mal
// 6_ Deactivate => for close variable resource
// 7_ Dispose    => for close variable resource

import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle_interview_ques/stf_part1_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle application'),
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: const Text('Change Parent Widget Data'))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to home screen'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => StfPartOneHome(number: number)));
          },
        ),
      ),
      // body: Home(number: number),
    );
  }
}
