import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle_interview_ques/count_state.dart';

class StfPartTwoHome extends StatefulWidget {
  const StfPartTwoHome({super.key});

  @override
  State<StfPartTwoHome> createState() => _StfPartTwoHomeState();
}

class _StfPartTwoHomeState extends State<StfPartTwoHome> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('did change dependency Home is called');
  }

  @override
  Widget build(BuildContext context) {
    final CountState countState = CountState.of(context);
    return Center(
      child: InkWell(
          onTap: () {
            countState.increment();
          },
          child: Text('Hello ${countState.count}')),
    );
  }
}
