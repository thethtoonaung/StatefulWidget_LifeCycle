import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle_interview_ques/count_state.dart';
import 'package:stateful_widget_lifecycle_interview_ques/stf_part2_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('did change dependency MyApp State is called');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(count.toString()),
          ),
          body: CountState(
            count: 1000,
            increment: _increment,
            child: const StfPartTwoHome(),
          )),
    );
  }

  void _increment() {
    setState(() {
      count++;
    });
  }
}
